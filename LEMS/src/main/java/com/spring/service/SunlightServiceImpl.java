package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.SunlightDAO;
import com.spring.dto.SunlightVO;

public class SunlightServiceImpl implements SunlightService {

	private SunlightDAO sunlightDAO;

	public void setSunlightDAO(SunlightDAO sunlightDAO) {
		this.sunlightDAO = sunlightDAO;
	}

	@Override
	public Map<String, Object> getSunlightList(SearchListCommand command) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		Map<String, String> staticMap = new HashMap<String, String>();

		List<SunlightVO> sunlightList = sunlightDAO.selectSearchSunlightList(command);

		float flsum = 0;
		float eusum = 0;
		float flmin = 0;
		float flmax = 0;
		float eumin = 0;
		float eumax = 0;
		float fldevi = 0;
		float eudevi = 0;

		if (sunlightList.size() > 0) {
			flmin = Float.parseFloat(sunlightList.get(0).getFullLight());
			flmax = Float.parseFloat(sunlightList.get(0).getFullLight());
			eumin = Float.parseFloat(sunlightList.get(0).getSunRise());
			eumax = Float.parseFloat(sunlightList.get(0).getSunRise());

			for (int i = 0; i < sunlightList.size(); i++) {

				// sum
				flsum += Float.parseFloat(sunlightList.get(i).getFullLight());
				eusum += Float.parseFloat(sunlightList.get(i).getSunRise());

				// mix, max
				flmin = (flmin > Float.parseFloat(sunlightList.get(i).getFullLight()))
						? Float.parseFloat(sunlightList.get(i).getFullLight())
						: flmin;
				flmax = (flmax < Float.parseFloat(sunlightList.get(i).getFullLight()))
						? Float.parseFloat(sunlightList.get(i).getFullLight())
						: flmax;
				eumin = (eumin > Float.parseFloat(sunlightList.get(i).getFullLight()))
						? Float.parseFloat(sunlightList.get(i).getFullLight())
						: eumin;
				eumax = (eumax < Float.parseFloat(sunlightList.get(i).getFullLight()))
						? Float.parseFloat(sunlightList.get(i).getFullLight())
						: eumax;
			}
		}
		staticMap.put("flMin", String.format("%.1f", flmin));
		staticMap.put("flMax", String.format("%.1f", flmax));
		staticMap.put("euMin", eumin + "");
		staticMap.put("euMax", eumax + "");

		// staticCommand.setTraMin(tramintmp+"");
		// 평균
		staticMap.put("flAvg", String.format("%.1f", (flsum / sunlightList.size())));
		staticMap.put("euAvg", (eusum / sunlightList.size() + ""));

		// 표준편차
		for (int i = 0; i < sunlightList.size(); i++) {
			fldevi += Math.pow(((Float.parseFloat(sunlightList.get(i).getFullLight()) - (flsum / sunlightList.size()))),
					2);
			eudevi += Math.pow(((Float.parseFloat(sunlightList.get(i).getSunRise()) - (eusum / sunlightList.size()))),
					2);
		}
		staticMap.put("flDevi", String.format("%.1f", Math.sqrt(fldevi / sunlightList.size())));
		staticMap.put("euDevi", String.format("%.1f", Math.sqrt(eudevi / sunlightList.size())));

		dataMap.put("staticMap", staticMap);
		dataMap.put("sunlightList", sunlightList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(sunlightDAO.selectSearchSunlightListCount(command));
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public SunlightVO getSunlight(String sunnum) throws SQLException {

		SunlightVO sunlight = sunlightDAO.selectSunlightBySunnum(sunnum);

		return sunlight;
	}

	@Override
	public SunlightVO getSunlightByHwCode(String hwCode) throws SQLException {
		
		SunlightVO sunlight = sunlightDAO.selectSunlightByHwCode(hwCode);

		return sunlight;
	}

}

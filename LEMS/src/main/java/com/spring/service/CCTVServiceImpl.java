package com.spring.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class CCTVServiceImpl implements CCTVService{
   
   public Map<String, String> cctv() throws SQLException, IOException {

         Map<String, String> cctvUrl = new HashMap<String,String> ();
         
         //cctvUrl.put("A", "123");
         //System.out.println(cctvUrl);
         //System.out.println(cctvUrl.get("A"));
         
         String[][] loc= {{"37.461626", "127.042004","양재"},
               {"37.399693", "127.100437","판교1"},
               {"37.226449", "127.104398","기흥"},
               {"36.82569999", "127.168774","천안"},
               {"36.59556", "127.42167","남이분기점"},
               {"36.408839", "127.421181","회덕분기점"},
               {"36.3286476135253", "127.540100097656","옥천쉼터"},
               {"36.27944", "127.66806","금강"},
               {"36.27234884", "127.8267176","영동"},
               {"36.1333923339843", "128.102416992187","김천2"},
               {"36.13384808", "128.0945745","김천"},
               {"35.92225757", "128.9514782","영천"},
               {"35.807621", "129.185451","경주IC"},
               {"35.573007", "129.13174","언양분기점"}};
         
         StringBuilder urlBuilder = new StringBuilder("https://openapi.its.go.kr:9443/cctvInfo"); /*URL*/
          urlBuilder.append("?" + URLEncoder.encode("apiKey", "UTF-8") + "=" + URLEncoder.encode("7bb65f0ffbb64d13b75e4a29cc87822f", "UTF-8")); /*공개키*/
          urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("ex", "UTF-8")); /*도로유형*/
          urlBuilder.append("&" + URLEncoder.encode("cctvType","UTF-8") + "=" + URLEncoder.encode("2", "UTF-8")); /*CCTV유형*/
          urlBuilder.append("&" + URLEncoder.encode("minX","UTF-8") + "=" + URLEncoder.encode("126.800000", "UTF-8")); /*최소경도영역*/
          urlBuilder.append("&" + URLEncoder.encode("maxX","UTF-8") + "=" + URLEncoder.encode("129.890000", "UTF-8")); /*최대경도영역*/
          urlBuilder.append("&" + URLEncoder.encode("minY","UTF-8") + "=" + URLEncoder.encode("35.000000", "UTF-8")); /*최소위도영역*/
          urlBuilder.append("&" + URLEncoder.encode("maxY","UTF-8") + "=" + URLEncoder.encode("38.100000", "UTF-8")); /*최대위도영역*/
          urlBuilder.append("&" + URLEncoder.encode("getType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*출력타입*/

           URL url = new URL(urlBuilder.toString());
          
           HttpURLConnection conn = (HttpURLConnection) url.openConnection();
           conn.setRequestMethod("GET");
           
           //System.out.println(conn.getHeaderFields());
           //System.out.println("Response code: " + conn.getResponseCode());
           BufferedReader rd;
           if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
           } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
           }
           String line = rd.readLine(); 
          
           String[] temp=line.split("\\{");

             for(int i=0;i<14;i++) {
                for(int j=3;j<temp.length;j++) {
                 if((temp[j].contains(loc[i][0]))&&temp[j].contains(loc[i][1])&&temp[j].contains(loc[i][2])) {
                    
                    int urlStart = temp[j].indexOf("http");
                    int urlEnd = temp[j].lastIndexOf("}")-1;
                    
                    String tmpUrl = temp[j].substring(urlStart,urlEnd);
                    //System.out.println(Character.toString((char)(i+65))+" : "+tmpUrl);
                    cctvUrl.put(Character.toString((char)(i+65)),temp[j].substring(urlStart,urlEnd));
                 }
              }
             }
           //System.out.println(cctvUrl);
           rd.close();
           conn.disconnect();
           return cctvUrl;
          }

}
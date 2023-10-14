

package com.spring.command;

public class SearchListCommand {
	   private int page = 1;
	   private int perPageNum = 10;
	   private String keyword = "";
	   private String searchType = "";
	   
	   private int startRowNum = 0;
	   
	   public int getPage() {
	      return page;
	   }
	   public void setPage(int page) {
	      this.page = page;
	      setStartRowNum();
	   }
	   public int getPerPageNum() {
	      return perPageNum;
	   }
	   public void setPerPageNum(int perPageNum) {
	      this.perPageNum = perPageNum;
	      setStartRowNum();
	   }
	   public String getKeyword() {
	      return keyword;
	   }
	   public void setKeyword(String keyword) {
	      this.keyword = keyword;
	   }
	   public String getSearchType() {
	      return searchType;
	   }
	   public void setSearchType(String searchType) {
	      this.searchType = searchType;
	   }
	   public int getStartRowNum() {
	      return this.startRowNum;
	   }
	   public void setStartRowNum() {
	      this.startRowNum = (this.page - 1) * this.perPageNum;
	   }
	   
	   
	}

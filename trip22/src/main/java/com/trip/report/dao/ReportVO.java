package com.trip.report.dao;

public class ReportVO {
	private int reservationNum;
    private String reportContent;
    private String reportCk;
    private int totalCount;
    private Integer result;
    
	public int getReservationNum() {
		return reservationNum;
	}
	public void setReservationNum(int reservationNum) {
		this.reservationNum = reservationNum;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public String getReportCk() {
		return reportCk;
	}
	public void setReportCk(String reportCk) {
		this.reportCk = reportCk;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getResult() {
		return result;
	}
	public void setResult(Integer result) {
		this.result = result;
	}
}

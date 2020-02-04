package com.trip.mypage.dao;

public class WishVO {
	private String userId; // 유저아이디
	private String userName; // 유저이름
	private int roomsId; // 룸아이디
	private String address; // 주소
	private String hostId; // 호스트아이디
	private String details; // 룸 소개
	private int price_weekdays; // 평일가격
	private int price_weekend; // 주말가격
	private int reviewCount; // 리뷰수
	private int avgScope; // 평균
	private String filename; // 사진파일이름
	private int priority; // 사진 갯수 및 순서
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getRoomsId() {
		return roomsId;
	}
	public void setRoomsId(int roomsId) {
		this.roomsId = roomsId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHostId() {
		return hostId;
	}
	public void setHostId(String hostId) {
		this.hostId = hostId;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getPrice_weekdays() {
		return price_weekdays;
	}
	public void setPrice_weekdays(int price_weekdays) {
		this.price_weekdays = price_weekdays;
	}
	public int getPrice_weekend() {
		return price_weekend;
	}
	public void setPrice_weekend(int price_weekend) {
		this.price_weekend = price_weekend;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public int getAvgScope() {
		return avgScope;
	}
	public void setAvgScope(int avgScope) {
		this.avgScope = avgScope;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
}

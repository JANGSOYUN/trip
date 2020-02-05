package com.trip.rooms.dao;

public class RoomsReviewSummaryVO {
	private int roomsId;
	private int reviewCount;
	private double avgScope;
	
	public int getRoomsId() {
		return roomsId;
	}
	public void setRoomsId(int roomsId) {
		this.roomsId = roomsId;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public double getAvgScope() {
		return avgScope;
	}
	public void setAvgScope(double avgScope) {
		this.avgScope = avgScope;
	}
}

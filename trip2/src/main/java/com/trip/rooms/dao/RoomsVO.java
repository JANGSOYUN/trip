package com.trip.rooms.dao;

public class RoomsVO {
	private int roomsId;			// 방 고유번호
	private String hostId;			
	private String details;			
	private int avail_adults;		// 성인
	private int avail_children;		// 아이
	private int avail_infants;		// 유아
	private int avail_bedroom;		// 방 형태
	private int avail_bed;			// 침대
	private int avail_bathroom;		// 욕실
	private String amenities;		// 편의용품(드라이, 에어컨 ...)
	private String time_checkin;
	private String time_checkout;
	private int price_weekdays;		// 평일
	private int price_weekend;		// 주말
	private String address;
	private int disabled;			// 장애 여부
	
	public int getRoomsId() {
		return roomsId;
	}
	public void setRoomsId(int roomsId) {
		this.roomsId = roomsId;
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
	public int getAvail_adults() {
		return avail_adults;
	}
	public void setAvailadults(int avail_adults) {
		this.avail_adults = avail_adults;
	}
	public int getAvail_children() {
		return avail_children;
	}
	public void setAvailchildren(int avail_children) {
		this.avail_children = avail_children;
	}
	public int getAvail_infants() {
		return avail_infants;
	}
	public void setAvailinfants(int avail_infants) {
		this.avail_infants = avail_infants;
	}
	public int getAvail_bedroom() {
		return avail_bedroom;
	}
	public void setAvailbedroom(int avail_bedroom) {
		this.avail_bedroom = avail_bedroom;
	}
	public int getAvail_bed() {
		return avail_bed;
	}
	public void setAvailbed(int avail_bed) {
		this.avail_bed = avail_bed;
	}
	public int getAvail_bathroom() {
		return avail_bathroom;
	}
	public void setAvailbathroom(int avail_bathroom) {
		this.avail_bathroom = avail_bathroom;
	}
	public String getAmenities() {
		return amenities;
	}
	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}
	public String getTime_checkin() {
		return time_checkin;
	}
	public void setTimecheckin(String time_checkin) {
		this.time_checkin = time_checkin;
	}
	public String getTime_checkout() {
		return time_checkout;
	}
	public void setTimecheckout(String time_checkout) {
		this.time_checkout = time_checkout;
	}
	public int getPrice_weekdays() {
		return price_weekdays;
	}
	public void setPriceweekdays(int price_weekdays) {
		this.price_weekdays = price_weekdays;
	}
	public int getPrice_weekend() {
		return price_weekend;
	}
	public void setPriceweekend(int price_weekend) {
		this.price_weekend = price_weekend;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getDisabled() {
		return disabled;
	}
	public void setDisabled(int disabled) {
		this.disabled = disabled;
	}		
}

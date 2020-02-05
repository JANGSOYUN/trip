package com.trip.reservation.dao;

import java.sql.Date;

public class ReservationInfo {
	private int reservationNum;	// 예약번호
	private String hostId;		// 슥소 등록자
	private String userId;		// person 아이디
	private Date checkIn;		
	private Date checkOut;
	private int roomsId;
	private int price;
	private int people;			// 사용자 수
	private int payCheck;		// 금액
	private int day;			// 숙박 일수
	
	public int getReservationNum() {
		return reservationNum;
	}
	public void setReservationNum(int reservationNum) {
		this.reservationNum = reservationNum;
	}
	public String getHostId() {
		return hostId;
	}
	public void setHostId(String hostId) {
		this.hostId = hostId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public int getRoomsId() {
		return roomsId;
	}
	public void setRoomsId(int roomsId) {
		this.roomsId = roomsId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getPayCheck() {
		return payCheck;
	}
	public void setPayCheck(int payCheck) {
		this.payCheck = payCheck;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	@Override
	public String toString() {
		return "ReservationInfo [reservationNum=" + reservationNum + ", hostId=" + hostId + ", userId=" + userId
				+ ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", roomsId=" + roomsId + ", price=" + price
				+ ", people=" + people + ", payCheck=" + payCheck + ", day=" + day + "]";
	}
	
	
}

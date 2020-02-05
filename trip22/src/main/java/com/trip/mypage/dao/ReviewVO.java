package com.trip.mypage.dao;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	private int reservationNum; // 예약넘버
	private String userId; // 유저아이디
	private String userName; // 유저이름
	private String hostId; // 호스트아이디
	private String reviewContent; // 리뷰 내용
	private int scope; // 별점
	private String userPhoto; // DB에 저장될 사진 이름
	private MultipartFile userPhotoFile; // 실제파일
	private Timestamp reviewDate; // 리뷰작성시간
	private Timestamp checkIn; // 체크인시간
	private Timestamp checkOut; // 체크아웃시간
	
	public int getReservationNum() {
		return reservationNum;
	}
	public void setReservationNum(int reservationNum) {
		this.reservationNum = reservationNum;
	}
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
	public String getHostId() {
		return hostId;
	}
	public void setHostId(String hostId) {
		this.hostId = hostId;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getScope() {
		return scope;
	}
	public void setScope(int scope) {
		this.scope = scope;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public MultipartFile getUserPhotoFile() {
		return userPhotoFile;
	}
	public void setUserPhotoFile(MultipartFile userPhotoFile) {
		this.userPhotoFile = userPhotoFile;
	}
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}
	public Timestamp getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Timestamp checkIn) {
		this.checkIn = checkIn;
	}
	public Timestamp getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Timestamp checkOut) {
		this.checkOut = checkOut;
	}
}

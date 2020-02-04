package com.trip.rooms.dao;

public class RoomsReviewVO {
	private int reservationNum;		// 예약 번호
	private String reviewContent;	// 리뷰 글
	private int scope;				// 범위
	private String reviewDate;		// 리뷰 작성일
	private String hostId;			// 숙소 주인
	private String userId;			// PERSON 아이디
	private String checkIn;		
	private String checkOut;
	private int roomsId;			// 방 번호
	private int price;		
	private int people;
	private int payCheck;
	private int day;
	private String userName;		// 작성자
	private String userPhoto;		// 작성자 업로드한 사진
//	private MultipartFile userPhotoFile;	// 작성자 사진 여러장 업로드
	private Byte host; 				// MultipartFile의 byte형식 arrayList로
	private Byte admin; 			
	private String userKey;
	private Byte userCheck; 		
	private int point;
	private Byte disabled; 			
	private String birth;
	private String userInfo;
	
	public int getReservationNum() {
		return reservationNum;
	}
	public void setReservationNum(int reservationNum) {
		this.reservationNum = reservationNum;
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
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
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
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public Byte getHost() {
		return host;
	}
	public void setHost(Byte host) {
		this.host = host;
	}
	public Byte getAdmin() {
		return admin;
	}
	public void setAdmin(Byte admin) {
		this.admin = admin;
	}
	public String getUserKey() {
		return userKey;
	}
	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}
	public Byte getUserCheck() {
		return userCheck;
	}
	public void setUserCheck(Byte userCheck) {
		this.userCheck = userCheck;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Byte getDisabled() {
		return disabled;
	}
	public void setDisabled(Byte disabled) {
		this.disabled = disabled;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(String userInfo) {
		this.userInfo = userInfo;
	}
}

package com.trip.rooms.dao;

public class RoomsImgVO {
	private int roomsId;		// 방 고유번호
	private byte[] filedata;	// DB 데이터 유형 BLOB으로 지정
	
	public int getRoomsId() {
		return roomsId;
	}
	public void setRoomsId(int roomsId) {
		this.roomsId = roomsId;
	}
	public byte[] getFiledata() {
		return filedata;
	}
	public void setFiledata(byte[] filedata) {
		this.filedata = filedata;
	}
}

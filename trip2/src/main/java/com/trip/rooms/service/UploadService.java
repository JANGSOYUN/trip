package com.trip.rooms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trip.rooms.dao.RoomsDAO;
import com.trip.rooms.dao.RoomsImgVO;
import com.trip.rooms.dao.RoomsVO;

@Service
public class UploadService {
	@Autowired private RoomsDAO dao;
	
	public String uploadImg(RoomsImgVO vo) {
		return dao.insertImg(vo)+"";
	}
	
	public RoomsImgVO selectImg(String roomsId) {
		return dao.selectImg(roomsId);
	}
	
	public RoomsVO regRoom(RoomsVO vo) {
		System.out.println(vo.getRoomsId()+ vo.getDetails()+ vo.getAvail_adults()+ vo.getAvail_bathroom());
		dao.insertRooms(vo);
		return selectRoom(dao.getMaxRoomsId() + "");
	}
	
	public RoomsVO regRoom() {
		return selectRoom(dao.getMaxRoomsId() + "");
	}
	
	public RoomsVO selectRoom(String roomsId) {
		return dao.selectRoom(roomsId);
	}

	public int getMaxRoomsId() {
		return dao.getMaxRoomsId();
	}
	
//	public int insertRooms(RoomsVO vo) {
//		return dao.insertRooms(vo);
//	}
}

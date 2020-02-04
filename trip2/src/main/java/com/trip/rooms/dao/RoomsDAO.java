package com.trip.rooms.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoomsDAO {

	@Autowired private
	SqlSessionTemplate sql;
	
	public int insertImg(RoomsImgVO vo) {
		return sql.insert("rooms.insertRoomsPhoto", vo);
	}
	
	public RoomsImgVO selectImg(String roomsId) {
		return sql.selectOne("rooms.selectRoomsPhoto", Integer.parseInt(roomsId));
	}
	
	public int insertRooms(RoomsVO vo) {
		return sql.insert("insertRooms", vo);
	}

	public RoomsVO selectRoom(String roomsId) {
		return sql.selectOne("selectRoom", Integer.parseInt(roomsId));
	}

	public int getMaxRoomsId() {
		
		return sql.selectOne("getMaxRoomsId");
	}
	 
}

package com.trip.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trip.admin.dao.UserListDAO;
import com.trip.person.dao.PersonVO;

@Service
public class UserListSurvice {
	@Autowired private UserListDAO dao;
	
	// 회원 목록
	public List<PersonVO> userlist(){
		return dao.userlist();
	}
	
	// 회원 정보 수정
	public PersonVO reset(String userid) {
		return dao.reset(userid);
	}
}

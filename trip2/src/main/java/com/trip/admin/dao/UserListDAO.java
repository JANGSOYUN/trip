package com.trip.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trip.person.dao.PersonVO;

@Repository
public class UserListDAO {
	@Autowired private SqlSessionTemplate sql;
	
	// 회원 목록
	public List<PersonVO> userlist() {
		return sql.selectList("userlist");
	}
	
	// 회원 정보 수정
	public PersonVO reset(String userid) {
		return sql.selectOne("userreset", userid);
	}
}

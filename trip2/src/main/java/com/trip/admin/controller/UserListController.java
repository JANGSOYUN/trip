package com.trip.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.admin.service.UserListSurvice;
import com.trip.person.dao.PersonVO;

@Controller
public class UserListController {
	@Autowired private UserListSurvice us;
	
	// 관리자 메인
	@RequestMapping(value="adminmain")
	public String main() {
		return "admin/adminmain";
	}
	
	// 회원 목록
	@RequestMapping(value="userlist")
	public String userlist(Model model) {
		List<PersonVO> list = us.userlist();
		model.addAttribute("list", list);
		return "admin/userlist";
	}
	
	// 회원 정보 수정
	@RequestMapping(value="reset")
	public String reset(String userid, Model model) {
		PersonVO reset = us.reset(userid);
		model.addAttribute("userreset", reset);
		return "admin/reset";
	}
	
	// 방 목록
	@RequestMapping(value="roomlist")
	public String roomlist() {
		return "rooms/roomlist";
	}
}

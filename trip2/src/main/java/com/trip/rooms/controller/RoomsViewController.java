package com.trip.rooms.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.trip.rooms.dao.RoomsImgVO;
import com.trip.rooms.dao.RoomsVO;
import com.trip.rooms.service.UploadService;

@Controller
public class RoomsViewController {

	@Autowired private UploadService UpSvc;
	
	@RequestMapping(value = "registration")
	public String view() {
		return "rooms/registration";
	}

	@RequestMapping(value = "registration", method = RequestMethod.POST)
	public ModelAndView view(RoomsVO vo, MultipartFile mpfile) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("person/test");
		mv.addObject("roomsvo", UpSvc.regRoom(vo));
		int nextroomsid = UpSvc.getMaxRoomsId();
		
		RoomsImgVO imgvo = new RoomsImgVO();
		imgvo.setFiledata(mpfile.getBytes());
		imgvo.setRoomsId(nextroomsid);
		UpSvc.uploadImg(imgvo);
		return mv;
	}

	// 방 목록
	@RequestMapping(value = "roomlist")
	public String roomlist() {
		return "rooms/roomlist";
	}

	// 숙소 정보
	@RequestMapping(value = "viewRoomsImg")
	public void roomview(String roomsId, HttpServletResponse res) throws Exception{
		
		RoomsImgVO vo = UpSvc.selectImg(roomsId);
		
		byte[] result = vo.getFiledata();
		System.out.println("result : " + result);
		
		InputStream is = new ByteArrayInputStream(result);
		ServletOutputStream os = res.getOutputStream();
		
		int binaryRead;
		
		while ((binaryRead = is.read()) != -1) {
			os.write(binaryRead);
		}
	}
}
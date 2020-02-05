package com.trip.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {
   
   @RequestMapping(value = "mypage", method = RequestMethod.GET)
   public String mypage() {
      return "mypage/mypage";
   }
   
   @RequestMapping(value = "reservation", method = RequestMethod.GET)
   public ModelAndView reservation() {
      return new ModelAndView("reservation/reservation");
   }
   
   @RequestMapping(value = "futureReservation", method = RequestMethod.GET)
   public ModelAndView futureReservation() {
      return new ModelAndView("reservation/futureReservation");
   }
   
   @RequestMapping(value = "lastReservation", method = RequestMethod.GET)
   public ModelAndView lastReservation() {
      return new ModelAndView("reservation/lastReservation");
   }
   
   @RequestMapping(value = "cancelReservation", method = RequestMethod.GET)
   public ModelAndView cancelReservation() {
      return new ModelAndView("reservation/cancelReservation");
   }
}
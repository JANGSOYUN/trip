package com.trip.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController {
   
   @RequestMapping(value = "payment", method = RequestMethod.GET)
   public ModelAndView payment() {
      return new ModelAndView("payment/payment");
   }
   
   @RequestMapping(value = "payment", method = RequestMethod.POST)
   public ModelAndView paymentResult() {
      return new ModelAndView("payment/payComplete");
   }
   
   @RequestMapping(value = "clause", method = RequestMethod.GET)
   public ModelAndView clause() {
      return new ModelAndView("payment/clause");
   }
   
   @RequestMapping(value = "personalInfo", method = RequestMethod.GET)
   public ModelAndView personalInfo() {
      return new ModelAndView("payment/personalInfo");
   }
}
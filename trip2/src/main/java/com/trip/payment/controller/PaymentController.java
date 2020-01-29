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
}
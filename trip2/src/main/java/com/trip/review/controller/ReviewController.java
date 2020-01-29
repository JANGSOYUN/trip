package com.trip.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public ModelAndView review() {
		return new ModelAndView("review/board");
	}
}
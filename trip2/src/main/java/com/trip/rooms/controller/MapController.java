package com.trip.rooms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	
	@RequestMapping(value="map")
	public String map() {
		return "rooms/map";
	}
	
	@RequestMapping(value="search")
	public String search() {
		return "rooms/search";
	}
}

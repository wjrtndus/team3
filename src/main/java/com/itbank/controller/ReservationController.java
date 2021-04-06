package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationController {
	
	
	@GetMapping("/reservation/reservation")
	public void reservation() {}
	
	@GetMapping("/reservation/booking")
	public void booking() {}
	

}

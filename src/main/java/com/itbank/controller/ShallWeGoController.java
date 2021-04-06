package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.itbank.service.AdminService;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.RoomDTO;
import com.itbank.shallwego.SalesDTO;

@Controller
public class ShallWeGoController {
   
   @Autowired
   private AdminService as;
   
   @RequestMapping("/") 
   public String index() {
      return "index";
   }
   
   @GetMapping("/admin/accomm")
   public String accomm() {
      return "admin/accomm";
   }
   
   @GetMapping("/admin/room_type")
   public String room_type() {
      return "admin/room_type";
   }
   
   @GetMapping("/admin/sales")
   public String sales() {
	   return "admin/sales";
   }
   
   @PostMapping("/admin/accomm")
   public String accomm(AccommDTO input, HttpSession session) {
      
      // 여기나 room에서 숙소의 idx를 받아와서 room_type.jsp의 number input에 넣으면 편할듯
	  System.out.println(input.getAccomm_name());
	   
      int row = as.insertAccomm(input);
      int row2 = 1;
      
      int idx = as.selectOne(input.getAccomm_name());
      
      if(input.getAccomm_type() == 1) {
         AccommDTO tmp = new AccommDTO();
         tmp.setAccomm_idx(idx);
         tmp.setTier_number(input.getTier_number());
         row2 = as.insertTier(tmp);
      }
      session.setAttribute("idx", idx);
      
      return row != 0 && row2 != 0 ? "redirect:/admin/room_type" : "";
   }
   
   @PostMapping("/admin/room_type")
   public String room(RoomDTO user) {
	  
      int row = as.insertRoom(user);
      
      return row != 0 ? "redirect:/admin/room_type" : "admin/accomm";
   }
   
   @PostMapping("/admin/sales")
   public String sales(SalesDTO user) {
      int row = as.insertSales(user);
      
      return row != 0 ? "index" : "admin/sales";
   }
   
}

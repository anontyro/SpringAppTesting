package co.alexwilkinson.springsite.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//loads inital page
	@RequestMapping("/")
	public String showPage(){
		return "home";
	}


}

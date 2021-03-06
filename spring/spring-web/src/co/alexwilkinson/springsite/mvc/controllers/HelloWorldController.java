package co.alexwilkinson.springsite.mvc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello") //parent map to put all below into sub directory
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm(){
		return "helloworld-form";
	}
	
	//process the form we use this
	@RequestMapping("/processForm")
	public String processForm(){
		return "helloworld";
	}
	
	//another controller to do some post processing on the data
	@RequestMapping("/processFormTwo")
	public String loud(HttpServletRequest request, Model model){
		
		//read the request parameter from the HTML form
		String studentName = request.getParameter("studentName");
		
		studentName = studentName.toUpperCase();
		
		String result = "Hello " +studentName;
		
		model.addAttribute("message", result);
		
		
		return"helloworld";
	}
	
	@RequestMapping("/processFormThree")
	public String third(@RequestParam("studentName") String theName, Model model){
		
		theName = theName.toLowerCase();
		
		String result = "Look who it is, it's " +theName;
		
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

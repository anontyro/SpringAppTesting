package co.alexwilkinson.springsite.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import co.alexwilkinson.springsite.mvc.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel){
		
		//new student object
		Student student = new Student();
		
		//add student object to model
		theModel.addAttribute("student",student);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String proccessForm(@ModelAttribute("student") Student student){
		
		System.out.println("The Student: " + student.getFirstName() +
				" " + student.getLastName()
				);
		
		return "student-confirmation";
	}
}

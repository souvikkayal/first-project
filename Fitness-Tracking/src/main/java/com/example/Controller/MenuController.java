package com.example.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController 
{
	@RequestMapping("/")
	public String openHomePage() {
		return "home.jsp";
	}
	@RequestMapping("/aboutus")
	public String openAboutUsPage() {
		return "about.jsp";
	}
	@RequestMapping("/contactus")
	public String openContactUsPage() {
		return "contact.jsp";
	}
	@RequestMapping("/studreg")
	public String openRegPage() {
		return "studregistration.jsp";
	}
	@RequestMapping("/studlogin")
	public String openUserLoginPage() {
		return "studlogin.jsp";
	}
	@RequestMapping("/adminhome")
	public String openAdminAfterLoginPage() {
		return "adminafterlogin.jsp";
	}
	@RequestMapping("/studhome")
	public String openUserAfterLoginPage() {
		return "studafterlogin.jsp";
	}
	@RequestMapping("/adminlogin")
	public String openAdminLoginPage() {
		return "adminlogin.jsp";
	}
	@RequestMapping("/addcourse")
	public String openAddCoursePage()
	{
		return "addcourse.jsp";
	}
}

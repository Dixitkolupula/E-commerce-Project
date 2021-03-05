 package com.ecomm.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController
{
	   
	@RequestMapping("/login")
	public String showLoginPage(Model m)
	{
		System.out.println("===Iam in My Controller-Login Page -=======");
		m.addAttribute("Pagename", "Sign Up");
		return "Login";
	}
	
	@RequestMapping("/adminpage")
	public String showAdminPage(Model m)
	{
		System.out.println("===Iam in My Controller-Login Page -=======");
		m.addAttribute("Pagename", "Home");
		return "AdminHome";
	}
	@RequestMapping("/userpage")
	public String showUserPage(Model m)
	{
		System.out.println("===Iam in My Controller-Login Page -=======");
		m.addAttribute("Pagename", "Home");
		
		return "UserHome";
	}
	@RequestMapping("/register")
	public String  showRegisterPage(Model m)
	{
		
		System.out.println("Iam in Register page");
		
		m.addAttribute("Pagename", "Register");
		return "Register";
	}
	

	@RequestMapping("/Home")
	public String  showHomePage(Model m)
	{
		
		System.out.println("Iam in Home page");
		m.addAttribute("Pagename", "Home");
		return "Home";
	}
	
	@RequestMapping("/logout")
	public String  showLogoutPage(HttpSession session)
	{
		session.invalidate();
		System.out.println("you are logged-out");
		return "Home";
	}
	@RequestMapping("/Aboutus")
	public String showAboutus(Model m)
	{
		m.addAttribute("Pagename", "Aboutus");
		return "Aboutus";
	}
	@RequestMapping("/Contactus")
	public String showContactus(Model m)
	{
		m.addAttribute("Pagename", "Contactus");
		return"Contactus";
	}

	
	
}

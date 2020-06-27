package com.proje.controller;

import java.util.Map;


import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proje.model.RegisterForm;
import com.proje.validation.RegisteValidation;
@Controller
@RequestMapping("/registerform")
public class RegisterController{
	
	@Inject
	private RegisteValidation validation;
	
	@RequestMapping(method = RequestMethod.GET)
	protected String gosterLoginForm(Map<String, RegisterForm> model) {
		
		model.put("registerForm", new RegisterForm());
		return "registerform";
	}
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	protected String registerForm(@Valid @ModelAttribute("registerForm") RegisterForm registerForm,
										 BindingResult result,
										 Map<String, RegisterForm> model) {
		System.out.println("Gelen: " +registerForm);
		System.out.println(validation);
		validation.validate(registerForm, result);
		
		if(result.hasErrors()) {
			return "registerform";
		}
		
		registerForm=model.get("registerForm");
		
		
		
		if(registerForm.getParola().trim().equals(registerForm.getParolaTekrar())) {
			model.put("registerForm", registerForm);
			System.out.println("Baþarýlý");
			return "sonucBasarili";
		}
		else {
			System.out.println("baþarýlý deðil");
			return "registerform";
			
		}
	}
	public void setValidation(RegisteValidation validation) {
		this.validation = validation;
	}
	
	
}

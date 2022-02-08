package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.UserModel;
import com.example.repository.UserRepo;

@RestController
public class UserController {

	@Autowired
	UserRepo userRepo;

	@GetMapping("/")
	public ModelAndView index(ModelMap map) {
		List<UserModel> model = new ArrayList<UserModel>();
		return new ModelAndView("index");
	}

	@PostMapping("save")
	public ModelAndView save(ModelMap map, @ModelAttribute UserModel userModel) {
//	Map<String, Object> map = new HashMap<String,Object>();
		System.out.println(userModel);
		try {
			userModel = userRepo.save(userModel);
			map.put("user",userModel);
			map.put("status", "success");
			map.put("message", "data save successfull");			
		} catch (Exception e) {
			map.put("status", "failed");
			map.put("message", "save failed");			
		}

		return new ModelAndView("save",map);
	}

}

package com.uca.capas.controller;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.dao.StudentDAO;
import com.uca.capas.domain.Student;

@Controller
public class MainController {

	@Autowired
	private StudentDAO studentDAO;
	
	@RequestMapping("/")
	public ModelAndView initMain(@ModelAttribute Student student) {
		ModelAndView mav = new ModelAndView();
		List<Student> students = null;
		try {
			students = studentDAO.findAll();
		}catch(Exception e) {
			e.printStackTrace();
		}
		mav.addObject("students", students);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/save")
	public ModelAndView save() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("student", new Student());
		mav.setViewName("form");
		return mav;
	}
	
	@RequestMapping(value="/formData")
	public ModelAndView formData(@ModelAttribute Student student) {
		ModelAndView mav = new ModelAndView();
		List<Student> students = null;
		try {
			studentDAO.save(student, 1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		students = studentDAO.findAll();
		mav.addObject("student", students);
		mav.setViewName("result");
		return mav;
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(@RequestParam(value="cStudent") Integer code){
		ModelAndView mav = new ModelAndView();
		Student studentD = null;
		try {
			mav.addObject("message", "El estudiante fue eliminado con exito");
			studentDAO.delete(code);
		}
		catch(Exception e){
			e.printStackTrace();
			mav.addObject("message", "El estudiante no pude ser eliminado");
		}
		mav.setViewName("result");
		return mav;
	}
}

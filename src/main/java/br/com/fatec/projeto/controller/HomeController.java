package br.com.fatec.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		ModelAndView model = new ModelAndView("home");
		return model;
	}
	
	@RequestMapping("/data")
	public ModelAndView data() throws Exception {
		ModelAndView model = new ModelAndView("Data/data");
		return model;
	}

	@RequestMapping("/about")
	public ModelAndView about() throws Exception {
		ModelAndView model = new ModelAndView("About/about");
		return model;
	}

}

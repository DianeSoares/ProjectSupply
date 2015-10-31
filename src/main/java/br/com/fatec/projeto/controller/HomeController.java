package br.com.fatec.projeto.controller;

import java.util.List;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fatec.projeto.dao.RawMaterialDAO;
import br.com.fatec.projeto.model.RawMaterial;
import br.com.fatec.projeto.model.Supplier;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private RawMaterialDAO rawMaterialDao;

	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		ModelAndView model = new ModelAndView("home");
		
		List<RawMaterial> rawMaterial = rawMaterialDao.findAll();
		int unit = calcRaw(rawMaterial);
		model.addObject("rawMaterial", unit);
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

	private int calcRaw(List<RawMaterial> rawMaterial){
		int value = 0;
		for (int i = 0; i < rawMaterial.size(); i++) {
			RawMaterial raw = rawMaterial.get(i);
			int unit = raw.getUnit();
			value = value + unit;
		}
		
	
		return  value;
		
	}
}

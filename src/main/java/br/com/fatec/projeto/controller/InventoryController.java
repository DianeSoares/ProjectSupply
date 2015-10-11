package br.com.fatec.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InventoryController {
	
	@RequestMapping("/inventoryRaw")
	public ModelAndView inventory() throws Exception {
		ModelAndView model = new ModelAndView("Inventory/homeRaw");
		return model;
	}
	
	@RequestMapping("/inventoryProduct")
	public ModelAndView product() throws Exception {
		ModelAndView model = new ModelAndView("Inventory/homeProduct");
		return model;
	}

}

package br.com.fatec.projeto.controller;

import java.util.List;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fatec.projeto.dao.ProductDAO;
import br.com.fatec.projeto.dao.RawMaterialDAO;
import br.com.fatec.projeto.model.Product;
import br.com.fatec.projeto.model.RawMaterial;
import br.com.fatec.projeto.model.Supplier;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private RawMaterialDAO rawMaterialDao;
	
	@Autowired
	private ProductDAO productDao;

	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		ModelAndView model = new ModelAndView("home");
		
		List<RawMaterial> rawMaterial = rawMaterialDao.findAll();
		List<Product> prod = productDao.findAll();
		int unit = calcRaw(rawMaterial);
		int unitProduct = calcProduct(prod);

		model.addObject("rawMaterial", unit);
		model.addObject("product", unitProduct);

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
	
	private int calcProduct(List<Product> product){
		int value = 0;
		for (int i = 0; i < product.size(); i++) {
			Product prod = product.get(i);
			int unit = prod.getUnit();
			value = value + unit;
		}
		
	
		return  value;
		
	}
}

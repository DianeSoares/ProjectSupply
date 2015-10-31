package br.com.fatec.projeto.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fatec.projeto.dao.ProductDAO;
import br.com.fatec.projeto.dao.ProductDAO;
import br.com.fatec.projeto.model.Product;
import br.com.fatec.projeto.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDao;


	@RequestMapping("/listProduct")
	public ModelAndView listProduct() throws Exception {
		List<Product> listProducts = productDao.findAll();
		ModelAndView model = new ModelAndView("Product/list");
		model.addObject("productList", listProducts);
		return model;
	}

	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	public ModelAndView newProduct() {
		ModelAndView model = new ModelAndView("Product/form");
		model.addObject("product", new Product());
		return model;
	}

	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editProduct(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Product product = productDao.findById(productId);
		ModelAndView model = new ModelAndView("Product/form");
		model.addObject("product", product);
		return model;
	}

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deleteProduct(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		productDao.remove(productId);
		return new ModelAndView("redirect:/listProduct");
	}

	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,  final RedirectAttributes redirectAttributes) {


		if (result.hasErrors()) {
			return new ModelAndView("Product/form");
		}
		productDao.saveOrUpdate(product);
		redirectAttributes.addFlashAttribute("product", product);		 
		redirectAttributes.addFlashAttribute("message","Usuário adicionado com sucesso.");
		return new ModelAndView("redirect:/listProduct");
	}
}

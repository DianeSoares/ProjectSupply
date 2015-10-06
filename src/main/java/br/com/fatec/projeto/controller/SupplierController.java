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

import br.com.fatec.projeto.dao.SupplierDAO;
import br.com.fatec.projeto.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDao;


	@RequestMapping("/listSupplier")
	public ModelAndView listSupplier() throws Exception {
		List<Supplier> listSuppliers = supplierDao.findAll();
		ModelAndView model = new ModelAndView("Supplier/list");
		model.addObject("supplierList", listSuppliers);
		return model;
	}

	@RequestMapping(value = "/newSupplier", method = RequestMethod.GET)
	public ModelAndView newSupplier() {
		ModelAndView model = new ModelAndView("Supplier/form");
		model.addObject("supplier", new Supplier());
		return model;
	}

	@RequestMapping(value = "/editSupplier", method = RequestMethod.GET)
	public ModelAndView editSupplier(HttpServletRequest request) {
		int supplierId = Integer.parseInt(request.getParameter("id"));
		Supplier supplier = supplierDao.findById(supplierId);
		ModelAndView model = new ModelAndView("Supplier/form");
		model.addObject("supplier", supplier);
		return model;
	}

	@RequestMapping(value = "/deleteSupplier", method = RequestMethod.GET)
	public ModelAndView deleteSupplier(HttpServletRequest request) {
		int supplierId = Integer.parseInt(request.getParameter("id"));
		supplierDao.remove(supplierId);
		return new ModelAndView("redirect:/listSupplier");
	}

	@RequestMapping(value = "/saveSupplier", method = RequestMethod.POST)
	public ModelAndView saveSupplier(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result,  final RedirectAttributes redirectAttributes) {


		if (result.hasErrors()) {
			return new ModelAndView("Supplier/form");
		}
		supplierDao.saveOrUpdate(supplier);
		redirectAttributes.addFlashAttribute("supplier", supplier);		 
		redirectAttributes.addFlashAttribute("message","Fornecedor adicionado com sucesso.");
		return new ModelAndView("redirect:/listSupplier");
	}

}

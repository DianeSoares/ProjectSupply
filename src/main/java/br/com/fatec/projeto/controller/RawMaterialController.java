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

import br.com.fatec.projeto.dao.RawMaterialDAO;
import br.com.fatec.projeto.dao.SupplierDAO;
import br.com.fatec.projeto.model.RawMaterial;
import br.com.fatec.projeto.model.Supplier;

@Controller
public class RawMaterialController {
	
	@Autowired
	private RawMaterialDAO rawMaterialDao;
	
	@Autowired
	private SupplierDAO supplierDAO;


	@RequestMapping("/listRawMaterial")
	public ModelAndView listRawMaterial() throws Exception {
		List<RawMaterial> listRawMaterials = rawMaterialDao.findAll();
		ModelAndView model = new ModelAndView("RawMaterial/list");
		model.addObject("rawMaterialList", listRawMaterials);
		return model;
	}

	@RequestMapping(value = "/newRawMaterial", method = RequestMethod.GET)
	public ModelAndView newRawMaterial() {
		
		List<Supplier> listSupplier = supplierDAO.findAll();
				
		ModelAndView model = new ModelAndView("RawMaterial/form");
		model.addObject("rawMaterial", new RawMaterial());
		
		model.addObject("listSupplier", listSupplier);
		return model;
	}

	@RequestMapping(value = "/editRawMaterial", method = RequestMethod.GET)
	public ModelAndView editRawMaterial(HttpServletRequest request) {
		int rawMaterialId = Integer.parseInt(request.getParameter("id"));
		RawMaterial rawMaterial = rawMaterialDao.findById(rawMaterialId);
		List<Supplier> listSupplier = supplierDAO.findAll();
		ModelAndView model = new ModelAndView("RawMaterial/form");
		model.addObject("rawMaterial", rawMaterial);
		model.addObject("listSupplier", listSupplier);

		return model;
	}

	@RequestMapping(value = "/deleteRawMaterial", method = RequestMethod.GET)
	public ModelAndView deleteRawMaterial(HttpServletRequest request) {
		int rawMaterialId = Integer.parseInt(request.getParameter("id"));
		rawMaterialDao.remove(rawMaterialId);
		return new ModelAndView("redirect:/listRawMaterial");
	}

	@RequestMapping(value = "/saveRawMaterial", method = RequestMethod.POST)
	public ModelAndView saveRawMaterial(@Valid @ModelAttribute("rawMaterial") RawMaterial rawMaterial, BindingResult result,  final RedirectAttributes redirectAttributes) {


		if (result.hasErrors()) {
			return new ModelAndView("RawMaterial/form");
		}
		rawMaterialDao.saveOrUpdate(rawMaterial);
		redirectAttributes.addFlashAttribute("rawMaterial", rawMaterial);		 
		redirectAttributes.addFlashAttribute("message","Fornecedor adicionado com sucesso.");
		return new ModelAndView("redirect:/listRawMaterial");
	}


}

package br.com.fatec.projeto.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.fatec.projeto.dao.ProductDAO;
import br.com.fatec.projeto.dao.RawMaterialDAO;
import br.com.fatec.projeto.dao.SupplierDAO;
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

	@Autowired
	private SupplierDAO supplierDao;

	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		ModelAndView model = new ModelAndView("home");

		List<RawMaterial> rawMaterial = rawMaterialDao.findAll();
		List<Product> prod = productDao.findAll();
		int unit = calcRaw(rawMaterial);
		int unitProduct = calcProduct(prod);

		RawMaterial rawMinor = searchMinorRaw(rawMaterial);
		RawMaterial rawMajor = searchMajorRaw(rawMaterial);

		if (rawMinor != null && rawMajor != null) {
			model.addObject("raw", rawMinor.getUnit());
			model.addObject("rawMajor", rawMajor.getUnit());
			model.addObject("rawMajorM", rawMajor.getDescription());
			model.addObject("rawNameM", rawMinor.getDescription());
		}
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
	
	@RequestMapping("/arquivoJSON")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		List<String> data = funcaoJson();
		Gson gson = new Gson();
		String json = gson.toJson(data);

		response.getWriter().write(json);
		response.getWriter().close();
		
		

	}
	
	@RequestMapping("/arquivoInventoryJSON")
	public void doPostInventory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		List<String> data = getInventory();
		Gson gson = new Gson();
		String json = gson.toJson(data);

		response.getWriter().write(json);
		response.getWriter().close();
	}

	private List<String> funcaoJson() {
		List<Supplier> supplier = supplierDao.findAll();

		List<String> name = new ArrayList<String>();
		List<Integer> valor = new ArrayList<Integer>();

		for (int i = 0; i < supplier.size(); i++) {
			name.add(supplier.get(i).getCompany());
			valor.add(calcSupplier(supplier.get(i).getId()));
		}

		List<String> strings = new ArrayList<String>();
		
		for (int i = 0; i < name.size(); i++) {
			strings.add(name.get(i) + ","+ valor.get(i));
		}

		return strings;
	}


	private int calcSupplier(int supplier) {

		List<RawMaterial> rawMaterial = rawMaterialDao.findBySupplier(supplier);
		int totalRaw = 0;
		if (rawMaterial != null) {
			for (int i = 0; i < rawMaterial.size(); i++) {
				int unitRaw = rawMaterial.get(i).getUnit();
				totalRaw += unitRaw;

			}

		}

		return totalRaw;

	}

	private int calcRaw(List<RawMaterial> rawMaterial) {
		int value = 0;
		for (int i = 0; i < rawMaterial.size(); i++) {
			RawMaterial raw = rawMaterial.get(i);
			int unit = raw.getUnit();
			value = value + unit;
		}
		return value;

	}

	private RawMaterial searchMinorRaw(List<RawMaterial> rawMaterial) {
		int value = 0;
		RawMaterial rawMinor = null;
		for (int i = 0; i < rawMaterial.size(); i++) {
			RawMaterial raw = rawMaterial.get(i);
			int unit = raw.getUnit();

			if (value == 0 || unit < value) {
				value = unit;
				rawMinor = raw;

			}

		}
		return rawMinor;

	}

	private RawMaterial searchMajorRaw(List<RawMaterial> rawMaterial) {
		int value = 0;
		RawMaterial rawMajor = null;
		for (int i = 0; i < rawMaterial.size(); i++) {
			RawMaterial raw = rawMaterial.get(i);
			int unit = raw.getUnit();
			if (value == 0 || unit > value) {
				value = unit;
				rawMajor = raw;

			}
		}
		return rawMajor;
	}

	private int calcProduct(List<Product> product) {
		int value = 0;
		for (int i = 0; i < product.size(); i++) {
			Product prod = product.get(i);
			int unit = prod.getUnit();
			value = value + unit;
		}

		return value;

	}
	
	private List<String> getInventory() {
		List<RawMaterial> raw = rawMaterialDao.findAll();

		List<String> name = new ArrayList<String>();
		List<Integer> valor = new ArrayList<Integer>();

		for (int i = 0; i < raw.size(); i++) {
			name.add(raw.get(i).getDescription());
			valor.add(raw.get(i).getUnit());
		}

		List<String> strings = new ArrayList<String>();
		
		for (int i = 0; i < name.size(); i++) {
			strings.add(name.get(i) + ","+ valor.get(i));
		}

		return strings;
	}

}

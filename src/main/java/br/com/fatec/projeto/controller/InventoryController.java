package br.com.fatec.projeto.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions.SumFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.fatec.projeto.dao.RawMaterialDAO;
import br.com.fatec.projeto.model.RawMaterial;

@Controller
public class InventoryController {
	
	@Autowired
	private RawMaterialDAO rawMaterialDao;
	
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
	
	@RequestMapping(value = "/calcAccuracy", method = RequestMethod.GET)
	public ModelAndView calcAccuracy(HttpServletRequest request) throws Exception {

		//Nenhum campo pode estar vazio
		Double difA = Double.parseDouble(request.getParameter("difA"));  
		Double difB = Double.parseDouble(request.getParameter("difB"));  
		Double difC = Double.parseDouble(request.getParameter("difC"));;
		
		Double accA = Double.parseDouble(request.getParameter("accA"));
		Double accB = Double.parseDouble(request.getParameter("accB"));
		Double accC = Double.parseDouble(request.getParameter("accC"));
		Double total = Double.parseDouble(request.getParameter("total"));

		Double result = calcAc(difA, difB, difC, accA, accB, accC, total);
		
		ModelAndView model = new ModelAndView("Inventory/indicators");
		model.addObject("result", result);	
		return model;
	}
	
	@RequestMapping("/Estocagem")
	public ModelAndView acuracidade() {

		ModelAndView model = new ModelAndView("Inventory/estocagem");
		double total = total();
		model.addObject("rawMaterial", new RawMaterial());

		model.addObject("total", total);
		return model;
	}
	
	@RequestMapping("/Acuracidade")
	public ModelAndView estocagem() {

		ModelAndView model = new ModelAndView("Inventory/teste");
		double total = total();
		double categoryC = categoryC();
		double categoryB = categoryB();
		double categoryA =categoryA();
		model.addObject("rawMaterial", new RawMaterial());
		model.addObject("accuracyA", categoryA);
		model.addObject("accuracyB", categoryB);
		model.addObject("accuracyC", categoryC);
		model.addObject("total", total);
		return model;
	}
	
	@RequestMapping(value = "/calcEstocagem", method = RequestMethod.GET)
	public ModelAndView calcCobertura(HttpServletRequest request) throws Exception {

		//Nenhum campo pode estar vazio
		Double sales = Double.parseDouble(request.getParameter("salesMonth"));  
		Double total = Double.parseDouble(request.getParameter("total"));

		Double result = calcCobertura(sales, total);
		
		ModelAndView model = new ModelAndView("Inventory/indicatorCobertura");
		model.addObject("result", result);	
		return model;
	}
	
	@RequestMapping("/Cobertura")
	public ModelAndView cobertura() {

		ModelAndView model = new ModelAndView("Inventory/cobertura");
		double total = total();
		model.addObject("rawMaterial", new RawMaterial());
		model.addObject("total", total);
		return model;
	}
	
	private double categoryA(){	
		List<RawMaterial> listA = rawMaterialDao.findByCategory("A");
		double valueA = 0;
		if (listA != null) {
			for (int i = 0; i < listA.size(); i++) {		
				RawMaterial raw = listA.get(i);
				int unit = raw.getUnit();
				valueA = valueA + unit;
			}
		}
		return valueA;		
	}
	
	private double categoryB(){	
		List<RawMaterial> listB = rawMaterialDao.findByCategory("B");
		double valueB = 0;
		if (listB != null) {
			for (int i = 0; i < listB.size(); i++) {		
				RawMaterial raw = listB.get(i);
				int unit = raw.getUnit();
				valueB = valueB + unit;
			}
		}
		return valueB;		
	}
	
	private double categoryC(){	
		List<RawMaterial> listC = rawMaterialDao.findByCategory("C");
		double valueC = 0;
		if (listC != null) {
			for (int i = 0; i < listC.size(); i++) {		
				RawMaterial raw = listC.get(i);
				int unit = raw.getUnit();
				valueC = valueC + unit;
			}
			return valueC;		

		}else{
			return 0;
		}
	}
	
	private double total(){
		List<RawMaterial> total = rawMaterialDao.findAll();
		double allCategory = 0;
		for (int i = 0; i < total.size(); i++) {		
			RawMaterial raw = total.get(i);
			int unit = raw.getUnit();
			allCategory = allCategory + unit;
		}
		return allCategory;
		
	}
	
	private double calcAc(Double difA, Double difB, Double difC, Double accA, Double accB, Double accC, Double total){
		Double At = accA - difA;
		Double Bt = accB - difB;
		Double Ct = accC - difC;
		
		Double v1 = v1(accA, total);
		Double v2 = v1(accB, total);
		Double v3 = v1(accC, total);
		
		Double At1 = v1(At, total);
		Double Bt1 = v1(Bt, total);
		Double Ct1 = v1(Ct, total);
		
		Double result = calcVal(v1, v2, v3, At1, Bt1, Ct1);
		return result;
		
	}
	
	private Double v1 (Double acc, Double total){
		Double value = acc/total;
		return value;
		
	}
	
	private Double calcVal(Double v1, Double v2,Double v3, Double At, Double Bt, Double Ct){
		
		Double result = (v1 * At) + (v2 * Bt) + (v3 * Ct);
		
		Double result1 = result * 100;
		
		return result1;
		
	}
	
	private Double calcStock(Double spaceTot, Double total) {
		// TODO Auto-generated method stub
		
		Double result = (total * 100) / spaceTot;
		return result;
	}
	
	private Double calcCobertura(Double sales, Double total) {
		// TODO Auto-generated method stub
		
		Double result = (total * 4.28) / sales;
		return result;
	}

}

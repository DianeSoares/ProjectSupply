package br.com.fatec.projeto.dao;

import java.util.List;

import br.com.fatec.projeto.model.Supplier;

public interface SupplierDAO {
	
	public List<Supplier> findAll();
	
	public Supplier findById(int id);

	public void saveOrUpdate(Supplier supplier);

	public void remove(int id);

}

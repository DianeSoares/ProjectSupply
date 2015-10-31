package br.com.fatec.projeto.dao;

import java.util.List;

import br.com.fatec.projeto.model.Product;

public interface ProductDAO {

	public List<Product> findAll();
	
	public Product findById(int id);

	public void saveOrUpdate(Product product);

	public void remove(int id);
}

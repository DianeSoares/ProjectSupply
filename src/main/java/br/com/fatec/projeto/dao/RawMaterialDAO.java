package br.com.fatec.projeto.dao;

import java.util.List;

import br.com.fatec.projeto.model.RawMaterial;

public interface RawMaterialDAO {

    public List<RawMaterial> findAll();
	
	public RawMaterial findById(int id);

	public void saveOrUpdate(RawMaterial rawMaterial);

	public void remove(int id);

	public List<RawMaterial> findByCategory(String category);

	public List<RawMaterial> findBySupplier(int supplier);
}

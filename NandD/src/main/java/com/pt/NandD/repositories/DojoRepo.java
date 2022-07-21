package com.pt.NandD.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pt.NandD.models.Dojo;

public interface DojoRepo extends CrudRepository<Dojo,Long>{
	List<Dojo> findAll();
}

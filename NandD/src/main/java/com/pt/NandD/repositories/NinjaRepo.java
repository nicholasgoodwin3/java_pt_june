package com.pt.NandD.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pt.NandD.models.Dojo;
import com.pt.NandD.models.Ninja;

public interface NinjaRepo extends CrudRepository<Ninja,Long>{
	List<Ninja> findAll();
	List<Ninja> findAllByDojo(Dojo dojo);
}

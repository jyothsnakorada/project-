package com.niit.projectbackend.daoimpl;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.projectbackend.dao.CategoryDAO;
import com.niit.projectbackend.dto.Category;

@Repository("CategoryDAO")

public class CategoryDAOimpl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<Category>();
	
	
	
	static{
		Category category = new Category();
		//adding first category
		category.setId(1);
		category.setName("Mobilephones");
		category.setDescription("description for Mobilephones!");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		
		category = new Category();
		//adding second category
		category.setId(2);
		category.setName("Telvision");
		category.setDescription("description for Television!");
		category.setImageURL("CAT_2.png");
		
		categories.add(category);
		
		category = new Category();
		//adding third category
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("description for Laptop!");
		category.setImageURL("CAT_3.png");
		
		categories.add(category);
		
		
		
		
		
		
		
		
		
	}
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}
	public Category get(int id) {
		//enhanced for loop
		for(Category category : categories){
			if(category.getId() == id) return category;
		}
		return null;
	}

}


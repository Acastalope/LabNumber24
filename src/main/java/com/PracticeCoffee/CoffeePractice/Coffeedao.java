package com.PracticeCoffee.CoffeePractice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.PracticeCoffee.CoffeePractice.entity.Items;

@Repository
public class Coffeedao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Items> findAllItems() {
		return jdbcTemplate.query("SELECT * FROM items", new BeanPropertyRowMapper<>(Items.class));
	}

	public List<Items> findByCategory(String category) {
		return jdbcTemplate.query("select * from items where category like '%" + category + "%'",
				new BeanPropertyRowMapper<Items>(Items.class));

	}

	public Integer addItems(String name, String category, String description) {
		String addQuery = "insert into items(name, category, description) values(?,?,?)";
		return jdbcTemplate.update(addQuery, name, category, description);
	}

	public Integer updateItems(Integer id, String name, String category, String description) {
		String updateQuery = "update items set name=?, category=?, description=? where id=?";
		return jdbcTemplate.update(updateQuery, name, category, description, id);
	}

	public Integer deleteItems(Integer id) {
		String deleteQuery = "delete from items where id=?";
		return jdbcTemplate.update(deleteQuery, id);
	}
}
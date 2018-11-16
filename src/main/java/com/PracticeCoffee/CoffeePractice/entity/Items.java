package com.PracticeCoffee.CoffeePractice.entity;

public class Items {
	// private instance variables
	// constructors
	// getters and setters

//	public class Coffee {

		private Long id;
		private String item;
		private String description;
		private Integer quantity;
		private Double price;
		
		public Items() {
			super();
		}

		public Items(Long id, String item, String description, Integer quantity, Double price) {
			super();
			this.id = id;
			this.item = item;
			this.description = description;
			this.quantity = quantity;
			this.price = price;

		}

		@Override
		public String toString() {
			return "Coffee [id=" + id + ", item=" + item + ", description=" + description + ", price=" + price
					+ ", getId()=" + getId() + ", getItem()=" + getItem() + ", getDescription()=" + getDescription()
					+ ", getPrice()=" + getPrice() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
					+ ", toString()=" + super.toString() + "]";
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getItem() {
			return item;
		}

		public void setItem(String item) {
			this.item = item;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public Integer getQuantity() {
			return quantity;
		}

		public void setQuantity(Integer quantity) {
			this.quantity = quantity;
		}

	//	}
}

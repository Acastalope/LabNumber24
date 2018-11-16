package com.PracticeCoffee.CoffeePractice.entity;

public class Customers {
	//private instance variables
		//constructors
		//getters and setters
	
	public class Coffee {
		Long id;
		String firstname;
		String lastname;
		String email;
		
		public Coffee(Long id, String firstname, String lastname, String email) {
			super();
			this.id = id;
			this.firstname = firstname;
			this.lastname = lastname;
			this.email = email;
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getFirstname() {
			return firstname;
		}
		@Override
		public String toString() {
			return "Coffee [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
					+ ", getId()=" + getId() + ", getFirstname()=" + getFirstname() + ", getLastname()=" + getLastname()
					+ ", getEmail()=" + getEmail() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
					+ ", toString()=" + super.toString() + "]";
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
				
	}
	
}

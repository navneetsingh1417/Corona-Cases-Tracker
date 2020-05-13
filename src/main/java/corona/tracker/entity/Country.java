package corona.tracker.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Country implements Comparable<Country>{

	@JsonProperty("country")
	private String country;
	
	@JsonProperty("CountryCode")
	private String countryCode;
	
	@JsonProperty("Slug")
	private String slug;
	
	@JsonProperty("NewConfirmed")
	private Long newconfirmed;
	
	@JsonProperty("cases")
	private Long totalconfirmed;
	
	@JsonProperty("NewDeaths")
	private Long newdeaths;
	
	@JsonProperty("deaths")
	private Long totaldeaths;
	
	@JsonProperty("NewRecovered")
	private Long newrecovered;
	
	@JsonProperty("recovered")
	private Long totalrecovered;
	
	@JsonProperty("active")
	private Long active;
	
	public Long getActive() {
		return active;
	}

	public void setActive(Long active) {
		this.active = active;
	}

	@JsonProperty("Date")
	private String date;
	
	public Country() {
		
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public Long getNewconfirmed() {
		return newconfirmed;
	}

	public void setNewconfirmed(Long newconfirmed) {
		this.newconfirmed = newconfirmed;
	}

	public Long getTotalconfirmed() {
		return totalconfirmed;
	}

	public void setTotalconfirmed(Long totalconfirmed) {
		this.totalconfirmed = totalconfirmed;
	}

	public Long getNewdeaths() {
		return newdeaths;
	}

	public void setNewdeaths(Long newdeaths) {
		this.newdeaths = newdeaths;
	}

	public Long getTotaldeaths() {
		return totaldeaths;
	}

	public void setTotaldeaths(Long totaldeaths) {
		this.totaldeaths = totaldeaths;
	}

	public Long getNewrecovered() {
		return newrecovered;
	}

	public void setNewrecovered(Long newrecovered) {
		this.newrecovered = newrecovered;
	}

	public Long getTotalrecovered() {
		return totalrecovered;
	}

	public void setTotalrecovered(Long totalrecovered) {
		this.totalrecovered = totalrecovered;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int compareTo(Country c) {
		return this.country.compareTo(c.country);
	}
	
	
}

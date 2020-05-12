package corona.tracker.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Global {
	
	@JsonProperty("NewConfirmed")
	private Long newconfirmed;
	
	@JsonProperty("TotalConfirmed")
	private Long totalconfirmed;
	
	@JsonProperty("NewDeaths")
	private Long newdeaths;
	
	@JsonProperty("TotalDeaths")
	private Long totaldeaths;
	
	@JsonProperty("NewRecovered")
	private Long newrecovered;
	
	@JsonProperty("TotalRecovered")
	private Long totalrecovered;
	
	public Global() {
		
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

	@Override
	public String toString() {
		return "Global [newconfirmed=" + newconfirmed + ", totalconfirmed=" + totalconfirmed + ", newdeaths="
				+ newdeaths + ", totaldeaths=" + totaldeaths + ", newrecovered=" + newrecovered + ", totalrecovered="
				+ totalrecovered + "]";
	}

	

	
	
	
}

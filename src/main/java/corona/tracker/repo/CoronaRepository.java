package corona.tracker.repo;

import java.util.Arrays;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import corona.tracker.entity.Country;
import corona.tracker.entity.SpecificCountry;
import corona.tracker.entity.Summary;


@Repository
public class CoronaRepository {

	public Summary getSummary() {
		RestTemplate rest = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		Summary summary =   rest.getForObject("https://api.covid19api.com/summary", Summary.class);
		return summary;
	}
	
	public Country[] getCountries() {
		RestTemplate rest = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		Country[] countries = rest.getForObject("https://api.covid19api.com/countries", Country[].class);
		return countries;
	}
	
	public SpecificCountry[] specificCountry(String countryName) {
		RestTemplate rest = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		SpecificCountry[] countries = rest.getForObject("https://api.covid19api.com/dayone/country/"+countryName, SpecificCountry[].class);
		return countries;
	}
	
}

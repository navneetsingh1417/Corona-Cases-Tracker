package corona.tracker.services;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import corona.tracker.entity.Country;
import corona.tracker.entity.Global;
import corona.tracker.entity.SpecificCountry;
import corona.tracker.repo.CoronaRepository;

@Service
public class CoronaServices {
	
	@Autowired
	private CoronaRepository coronaRepo;

	public Global getGlobalSummary() {
		Global global = coronaRepo.getSummary().getGlobal();
		return global;
	}
	
	public List<Country> getAllCountries(){
		List<Country> countries = Arrays.asList(coronaRepo.getCountries());
		return countries;
	}
	
	public Country getSpecificCountry(String countryName) {
		//List<SpecificCountry> countries = Arrays.asList(coronaRepo.specificCountry(countryName));
		Country country = coronaRepo.specificCountry(countryName);
		//SpecificCountry country = countries.get(countries.size()-1);
//		SpecificCountry country = countries[countries.length-1];
//		System.out.println(countries[countries.length-1]);
//		System.out.println(country);
		return country;
	}
}

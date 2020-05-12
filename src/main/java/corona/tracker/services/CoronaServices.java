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
	
	public SpecificCountry getSpecificCountry(String countryName) {
		List<SpecificCountry> countries = Arrays.asList(coronaRepo.specificCountry(countryName));
		SpecificCountry country = countries.get(countries.size()-1);
		return country;
	}
}

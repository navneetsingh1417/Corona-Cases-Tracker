package corona.tracker.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import corona.tracker.entity.Country;
import corona.tracker.entity.Global;
import corona.tracker.entity.SpecificCountry;
import corona.tracker.services.CoronaServices;


@Controller
public class HomeController {
	
	@Autowired
	private CoronaServices coronaServices;

	@GetMapping("")
	public String getAliens(Model model) {
		Global global = coronaServices.getGlobalSummary();
		Long globalActive = global.getTotalconfirmed()-global.getTotalrecovered();
		model.addAttribute("global",global);
		model.addAttribute("globalActive", globalActive);
		return "index";
	}
	
	@GetMapping("country")
	public String countries(Model model){
		List<Country> countries = coronaServices.getAllCountries();
		Collections.sort(countries);
		model.addAttribute("countries", countries);
		return "countries";
	}
	
	@PostMapping("country/{countrySlug}")
	public String byCountryName(@PathVariable("countrySlug") String countrySlug,Model model){
		Country country = coronaServices.getSpecificCountry(countrySlug);
		model.addAttribute("country", country);
		return "byCountry";
	}
	
	@GetMapping("country/{countrySlug}")
	public String byCountryName2(@PathVariable("countrySlug") String countrySlug,Model model){
		Country country = coronaServices.getSpecificCountry(countrySlug);
		model.addAttribute("country", country);
		return "byCountry";
	}
}

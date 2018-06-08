package com.candata.demo.taxi.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.candata.demo.taxi.entity.PredResult;
import com.candata.demo.taxi.service.TaxiService;

@Controller
@RequestMapping("/demo/taxi")
public class TaxiController {
	
	private TaxiService taxiService;
	
	@Autowired
	public void setTaxiService(TaxiService taxiService){
		this.taxiService = taxiService;
	}
	
	@RequestMapping("/")
	public String gotoTaxiIndex(){
		return "demo/taxi-index";
	}
	
	@RequestMapping("/index")
	public String gotoTaxiIndex2(){
		return "demo/taxi-index";
	}
	
	@RequestMapping("/index.html")
	public ModelAndView gotoTaxiIndex3(){
		
		List<PredResult> predResultList = taxiService.getPredResult();
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("predResultList", predResultList);
		
		String viewName = "demo/taxi-index";;
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value="/taxidata",method=RequestMethod.GET,produces="application/json")
	@ResponseBody
	public Map<String, Object> getTaxiJson(){
		
		List<PredResult> predResultList = taxiService.getPredResult();
		
		List<Double> predDataList = new ArrayList<Double>();
		List<Double> realDataList = new ArrayList<Double>();
		List<String> labelDataList = new ArrayList<String>();
		
		for(PredResult pr : predResultList){
			
			double dif = pr.getPred()-pr.getTruth();
			final int THRESHOLD = 2000;
			if(Math.abs(dif)< THRESHOLD){
				predDataList.add(pr.getPred());
				realDataList.add(pr.getTruth());
				labelDataList.add(pr.getOrderId());
			}
			
		}
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		//model.put("series", predResultList);
		model.put("predData", predDataList);
		model.put("realData", realDataList);
		model.put("labelData", labelDataList);
		
		
//		String viewName = "demo/taxi-index";;
//		mav.setViewName(viewName);
		return model;
	}
	
	
	@RequestMapping("/taxi-heatmap.html")
	public String gotoTaxiHeatMap(){
		return "demo/taxi-heatmap";
	}
	
	@RequestMapping("/taxi-predresult.html")
	public String gotoPredResult(){
		return "demo/taxi-predresult";
	}
	
	
	/**
	 * embedded chart
	 * 
	 * @return
	 */
	
	@RequestMapping("/dynamic-trip.html")
	public String gotoDynamicTrip(){
		return "inc_data/taxi/dynamic-trip";
	}
	
	@RequestMapping("/dynamic-trip-2.html")
	public String gotoDynamicTrip2(){
		return "inc_data/taxi/dynamic-trip-2";
	}
	
	@RequestMapping("/chord-from-df.html")
	public String gotoChordFromDf(){
		return "inc_data/taxi/chord-from-df";
	}
	
}

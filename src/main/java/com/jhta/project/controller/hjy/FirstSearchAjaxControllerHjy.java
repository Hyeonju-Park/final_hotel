package com.jhta.project.controller.hjy;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.project.service.hjy.FavoriteServiceHjy;
import com.jhta.project.service.hjy.FirstSearchServiceHjy;
import com.jhta.project.service.lhjcjy.SearchByStarServicelhjcjy;
import com.jhta.project.service.lhjcjy.SortByPriceServicelhycjy;
import com.jhta.project.service.lhjcjyhjy.GetPriceServicelhjcjyhjy;
import com.jhta.project.vo.lhjcjy.AccommodationsVo2lhjcjy;
import com.jhta.project.vo.lhjcjy.AccommodationsVolhjcjy;
import com.jhta.project.vo.lhjcjy.SearchVolhjcjy;

@RestController
public class FirstSearchAjaxControllerHjy {
	@Autowired private FirstSearchServiceHjy service;
	@Autowired private GetPriceServicelhjcjyhjy gpservice;
	@Autowired private FavoriteServiceHjy favoriteService;
	@Autowired private SearchByStarServicelhjcjy sbsservice;
	@Autowired private SortByPriceServicelhycjy sbpservice;

	Logger logger = LoggerFactory.getLogger(FirstSearchAjaxControllerHjy.class);
	
	@RequestMapping(value="/hjy/ajax/auto", produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> autolist(String aname,HttpServletRequest request,
            HttpServletResponse response) {
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		List<String> list= service.findhotel(aname);
		logger.debug(list.toString());
		map.put("list", list);
		return map;
	}
	@RequestMapping(value="/hjy/facilities", produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> facilities(String id) {
		logger.debug(id);
		HashMap<String, Object> map =new HashMap<String, Object>();
		return map;
	}
	
	@RequestMapping(value = "hjy/firstsearchajax", method = RequestMethod.GET)
	public HashMap<String, Object> searchGet(String searchHotel, String checkin, String checkout, String countPeople, String countRoom,
			 String fac, String minprice, String maxprice,String sort,String restar,String agrade,String autoaname, HttpSession session) {
			String [] facilities = fac.split(",");
		return execute(searchHotel, checkin, checkout, countPeople, countRoom,facilities,minprice,maxprice,sort,restar,agrade,autoaname,session);
	}
	
	@RequestMapping(value = "hjy/firstsearchajax", method = RequestMethod.POST)
	public HashMap<String, Object> searchPOST(String searchHotel, String checkin, String checkout, String countPeople, String countRoom,
			@RequestParam(value="facilities", required = false)  String[] facilities, String minprice, String maxprice,String sort,String restar,String agrade,String autoaname, HttpSession session) {
		return execute(searchHotel, checkin, checkout, countPeople, countRoom,facilities,minprice,maxprice,sort,restar,agrade,autoaname,session);
	}
	private HashMap<String, Object> execute(String searchHotel, String checkin, String checkout, String countPeople, String countRoom,
			String[] facilities, String minprice, String maxprice,String sort,String restar,String agrade,String autoaname, HttpSession session){
		logger.debug("?????????: "+searchHotel);
		logger.debug("???????????????: "+checkin);
		logger.debug("??????????????????: "+checkout);
		logger.debug("?????????: "+countPeople);
		logger.debug("??????: "+countRoom);
		logger.debug("????????????:"+minprice);
		logger.debug("????????????:"+maxprice);
		logger.debug("????????????:"+sort);
		logger.debug("????????????:"+restar);
		logger.debug("????????????:"+agrade);
		logger.debug("??????????????? ????????????:"+autoaname);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		HashMap<String, Object> hs = new HashMap<String, Object>();
		try {
			if(facilities!=null) {
				for (int i = 0; i < facilities.length; i++) {
					logger.debug("????????????: "+facilities[i]);
					if(facilities[i].equals("????????????")) {
						facilities[i]="";
						//db?????? ?????????????????? ????????????
						String hotelname = favoriteService.find((String)session.getAttribute("mid"));
						String[] hotelnamearr = hotelname.split(" ");
						hs.put("firstbookmark", hotelnamearr[0]);
						hs.put("bookmark", hotelnamearr);
						logger.debug("????????????:"+hotelnamearr);
					};
				}
			}
			String checkin1=checkin.replace("-", "");
			String checkout1=checkout.replace("-", "");
			hs.put("facilities", facilities);
			hs.put("aaddress", searchHotel);
			hs.put("aname", searchHotel);
			hs.put("rcheckin", checkin1);
			hs.put("rcheckout", checkout1);
			hs.put("rimaxper", countPeople);
			hs.put("countRoom", countRoom);
			hs.put("minprice", minprice);
			hs.put("maxprice", maxprice);
			if(restar!=null) {
				hs.put("restar", restar);
			}
			if(agrade!=null) {
				hs.put("agrade", agrade);
			}
			if(autoaname!=null) {
				hs.put("autoaname", autoaname);
			}
			
			result.put("aaddress", searchHotel);
			result.put("rcheckin", checkin);
			result.put("rcheckout", checkout);
			result.put("rimaxper", countPeople);
			result.put("countRoom", countRoom);
			if(sort.equals("price_low")) {
				List<AccommodationsVo2lhjcjy> list=sbpservice.sortPrice_low(hs);
				result.put("list", list);
				System.out.println("calledprice_low");
				System.out.println(list);
			}else if(sort.equals("price_high")){
				List<AccommodationsVo2lhjcjy> list=sbpservice.sortPrice_high(hs);
				result.put("list", list);
				System.out.println("calledprice_high");
				System.out.println(list);
			}else if(sort.equals("star")) {
				List<SearchVolhjcjy> list=sbsservice.getStarList(hs);
				result.put("list", list);
				System.out.println("calledstar");
				System.out.println(list);
			}else {
				List<AccommodationsVolhjcjy> list = gpservice.getprice(hs);
				result.put("list", list);
				System.out.println("calledalld");
				System.out.println(list);
			}
			//????????? ?????? ???????????? ????????? ??????
			HashMap<String, Object> hs1=new HashMap<String, Object>();
			String STARTDAY1=checkin.replace("-", "");
			String ENDDAY1=checkout.replace("-", "");
			hs1.put("STARTDAY", STARTDAY1);
			hs1.put("ENDDAY", ENDDAY1);
			result.put("checkin", checkin1);
			result.put("checkout", checkout1);
			result.put("code", "success");
		}catch(Exception e) {
			e.printStackTrace();
			result.put("code", "fail");
		}
		return result;
	}
	
}

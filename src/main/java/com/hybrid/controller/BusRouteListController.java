package com.hybrid.controller;

import java.net.URLDecoder;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.hybrid.model.busapi.ServiceResult;

@Controller
@RequestMapping("/busRouteInfo")
public class BusRouteListController {
	static Log log = LogFactory.getLog(BusRouteListController.class);
	
	@RequestMapping("/getBusRouteList/{strSrch}")
	@ResponseBody
	public ServiceResult getBusRouteList(@PathVariable String strSrch) {
		log.info("getBusRouteList().. strSrch=" + strSrch);
		
		RestTemplate rest = new RestTemplate();
		
		String url = "http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch={strSrch}&serviceKey={serviceKey}";
		String serviceKey = URLDecoder.decode("AaxqTg02PVW%2BZhaIkh4fVAIiknK6EU6ZkfT1lQEHEo2PRlldpzfhjoBwE63YKQGpiY4JdZCjCktTW2yatRX%2FgA%3D%3D");
		
		ServiceResult result = rest.getForObject(url, ServiceResult.class, strSrch, serviceKey);
				
		return result;
	}

}

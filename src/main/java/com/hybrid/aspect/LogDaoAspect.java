package com.hybrid.aspect;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LogDaoAspect {
	static Log log = LogFactory.getLog(LogDaoAspect.class);
	
	@Before("execution(public * com.hybrid.dao.*Dao.*(..))")
	public void before(){
		log.info("### START");
		
	}
	
	@After("execution(public * com.hybrid.dao.*Dao.*(..))")
	public void after(){
		log.info("### END");
	}
}

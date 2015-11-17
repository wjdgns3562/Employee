package com.hybrid.aspect;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

import edu.emory.mathcs.backport.java.util.Arrays;

@Aspect
public class LogDaoAspect {
//	static Log log = LogFactory.getLog(LogDaoAspect.class);
	
	@Pointcut("execution(public * com.hybrid.dao.*Dao.*(..))")
	public void logcut(){
		
	}
	
	@Before("logcut()")
	public void before(JoinPoint jp){
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		log.info("###"+ jp.getSignature().getName()
					  + "("
					  + Arrays.toString(jp.getArgs())
					  + ")"
					  + "START");
	}
	
	@After("logcut()")
	public void after(JoinPoint jp){
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		log.info("###"+ jp.getSignature().getName() +"END");
	}
}

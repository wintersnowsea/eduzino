package com.edu.zino.exception;

public class OrderSummaryException extends RuntimeException{
	
	public OrderSummaryException(String msg) {
		super(msg);
	}
	public OrderSummaryException(String msg, Throwable e) {
		super(msg,e);
	}
}

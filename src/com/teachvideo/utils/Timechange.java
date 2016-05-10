package com.teachvideo.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Timechange {
		public static Date gettime(Integer minu){
			
			try {
				
				long currentTime = System.currentTimeMillis() + minu * 60 * 1000;
				Date date = new Date(currentTime);
				return date;
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return null;
			
			
		}
}

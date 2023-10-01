package com.model;
import java.io.*;
import java.util.*;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.*;

public class ReadSheet {
public List<String> getCourses() throws IOException {
	List<String> courseList = new ArrayList<String>();
	FileInputStream fileurl = new FileInputStream(new File("D:\\Module_7\\May_Phoo_Project\\Too_Soon_Hotel_Servlet\\TooSoonHotel\\src\\main\\webapp\\TimeList.xlsx"));
	XSSFWorkbook workbook = new XSSFWorkbook(fileurl);
	XSSFSheet spreadsheet = workbook.getSheetAt(0);
	Iterator<Row> rowIterator = spreadsheet.iterator();
	while(rowIterator.hasNext()) {
		XSSFRow row  = (XSSFRow) rowIterator.next();
		Iterator < Cell > cellIterator = row.cellIterator();
		if (cellIterator.hasNext()) {
		    Cell firstCell = cellIterator.next();
		    
		    // Get the value of the first cell
		    String value = firstCell.getStringCellValue(); // Assuming the cell contains a string value
		    courseList.add(value);
		    // Do something with the value
		}
	}
	fileurl.close();
	return courseList;
}

}


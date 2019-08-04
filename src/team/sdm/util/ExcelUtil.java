package team.sdm.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;


public class ExcelUtil {
	private ExcelUtil() {
	};

	/*
	 * head表头 list表数据
	 */
	public static HSSFWorkbook fillExcelData(List<String> head, List listData) {

		try {
			//创建workbook
			HSSFWorkbook wb = new HSSFWorkbook();
			
			// 创建一个sheet
			HSSFSheet sheet = wb.createSheet();
			
			// 创建第一行，第一行写表头
			HSSFRow HSSFhead = sheet.createRow(0);
			// 写入表头
			for (int c = 0; c < head.size(); c++) {
				//创建单元格
				HSSFCell cell = HSSFhead.createCell(c);
				cell.setCellValue(new HSSFRichTextString(head.get(c)));
			}

			// 获取对象的所有属性名
			String[] fieldNames = ClassUtil.getFiledName(listData.get(0));

			// 写入表数据
			for (int r = 1; r <= listData.size(); r++) {
				HSSFRow row = sheet.createRow(r);
				Object obj = listData.get(r - 1);
				//创建单元格
				for (int c = 0; c < fieldNames.length; c++) {
					HSSFCell cell = row.createCell(c);
					
					//根据属性名，获取属性值
					String fieldName = fieldNames[c];
					Object value = ClassUtil.getFieldValueByName(fieldName, obj);
					
					if (value != null) {
						//在单元格中写入数据
						cell.setCellValue(value.toString()); 
					} else {
						cell.setCellValue("");
					}
				}
			}

			return wb;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	/*
	 * 自动生成表头（以属性名为表头）
	 */
	public static HSSFWorkbook fillExcelData(List listData) {
		// 获取属性名
		String[] fieldNames = ClassUtil.getFiledName(listData.get(0));
		List<String> head = new ArrayList<String>();
		for (String n : fieldNames) {
			head.add(n);
		}
		return fillExcelData(head, listData);
	}

	/*
	 * 把workbook写入本地路径
	 */
	public static boolean writeExcel(Workbook wb, String path) {
		try {
			File newFile = new File(path);
			newFile.createNewFile();
			
			OutputStream out = new FileOutputStream(path);
			wb.write(out); // 写入 File
			System.out.println(" 文件保存成功 " + path);
			out.flush();
			out.close();
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	/*
	 * 通过response发送workbook（发送文件）
	 */
	public static boolean writeExcel(HttpServletResponse response, Workbook wb, String defaultName) {
		defaultName = defaultName + ".xls";
		try {
			response.setHeader("Content-Disposition",
					"attachment;filename=" + new String(defaultName.getBytes("utf-8"), "iso8859-1"));
			response.setContentType("application/ynd.ms-excel;charset=UTF-8");
			OutputStream out = response.getOutputStream();
			wb.write(out);
			out.flush();
			out.close();
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

}

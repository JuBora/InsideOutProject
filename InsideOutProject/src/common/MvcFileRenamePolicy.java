package common;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MvcFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File oldFile) {
		File newFile = null;
		
		do {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
			int rndNum = (int)(Math.random()*1000); //0~999
			
			//확장자
			String oldName = oldFile.getName();
			String ext = "";
			int dot = oldName.lastIndexOf(".");
			if(dot>-1) {
				ext = oldName.substring(dot); //.png .txt .pdf
			}
			
			//새파일명 생성
			String newName = sdf.format(new Date())+"_"+rndNum+ext;
			System.out.println("생성된 파일명@mvcFileRenamePolicy="+newName);
			
			//새파일객체
			newFile = new File(oldFile.getParent(), newName);
			
			
		} while(!createNewFile(newFile));
		return newFile;
	}
	
	private boolean createNewFile(File f) {
	    try {
	    	//파일이 존재하면, 파일을 생성하지 않고, false를 리턴
	    	//파일이 존재하지 않으면, 파일을 생성하고, true를 리턴
	    	return f.createNewFile();
	    }
	    catch (IOException ignored) {
	    	return false;
	    }
	 }
}

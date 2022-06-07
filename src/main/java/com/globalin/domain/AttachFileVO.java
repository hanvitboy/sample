package com.globalin.domain;

public class AttachFileVO {
	private String fileName,uploadPath,uuid;
	private boolean fileType;
	private int bno;
	
	public boolean isFileType() {
		return fileType;
	}
	public void setFileType(boolean fileType) {
		this.fileType = fileType;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	@Override
	public String toString() {
		return "AttachFileVO [fileName=" + fileName + ", uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileType="
				+ fileType + ", bno=" + bno + "]";
	}
	
	

}

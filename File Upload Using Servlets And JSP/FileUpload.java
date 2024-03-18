package com.ebaad;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUpload extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// Our data is inside the request object but the way we can fetch the data by creating the object of
			// ServletFileUpload. Now In ServletFileUpload we need to pass the obj of DiskFileItemFactory.
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		List<FileItem> multifiles = sf.parseRequest(request);
		
		for(FileItem items : multifiles) {
			items.write(new File("Users/toshiba/eclipse-workspace/FileUploadDemo/" + items.getName()));
		}

	}
}


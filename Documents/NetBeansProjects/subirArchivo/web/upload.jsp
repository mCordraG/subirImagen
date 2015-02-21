
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%
    String ubicarArchivo="/";
    DiskFileItemFactory factory=new DiskFileItemFactory();
    factory.setSizeThreshold(1024);
    factory.setRepository(new File(ubicarArchivo));
    
    ServletFileUpload upload=new ServletFileUpload(factory);
    
    try{
        List<FileItem> partes = upload.parseRequest(request);
        for(FileItem item : partes){
            File file=new File(ubicarArchivo,item.getName());
            item.write(file);
        }
        out.write("archivo subido correctamente");
        
    }catch(FileUploadException e){
        out.write("Error al subir archivo"+e.getMessage());
    }
%>

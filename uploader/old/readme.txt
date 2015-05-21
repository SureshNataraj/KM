FileUploader ASP Library (beta 1.2)
********************************************************
 Author: Jacob "Bèézle" Gilley
 Co-author: Philippe Collignon (I'm assuming)
 Email: avis7@airmail.net
 Purpose: To provide a free and easy way to perform file
		  uploading across the web via Active Server Pages.
********************************************************

NOTE - YOU MUST HAVE VBSCRIPT v5.0 INSTALLED ON YOUR WEB SERVER
	   FOR THIS LIBRARY TO FUNCTION CORRECTLY. YOU CAN OBTAIN IT
	   FREE FROM MICROSOFT WHEN YOU INSTALL INTERNET EXPLORER 5.0
	   OR LATER.

Object Overview
---------------

========================================================
FileUploader Object
========================================================

METHODS
---------
 Upload() - Begins the file upload process. MUST BE CALLED FIRST!

PROPERTIES
------------
 Files - A Collection of UploadedFile objects. (see below)
 Form  - A Collection of posted form elements.
 
========================================================


========================================================
UploadedFile Object
======================================================== 

METHODS
---------
 SaveToDisk(Path) - Accepts a fully qualified physical path 
					to save the	uploaded file to.
					
 SaveToDatabase(Field) - Accepts an ADODB.Field object to save
						 the uploaded file to. The ADODB.Recordset
						 must be opened by you and the database must
						 support Binary Large Objects (BLOBS).

PROPERTIES
------------
 FileName - The name of the file uploaded. (Does not include path information)
 FileSize - The size, in bytes, of the file uploaded.
 FileData - The raw binary file data.
 ContentType - The application association string that binds a particular file
			   extention to an application. (e.g. "image/gif")
 
========================================================

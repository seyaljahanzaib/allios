package pl.alios.utils.fop;

import java.io.File;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.FopFactory;
import org.apache.log4j.Logger;

import pl.alios.action.AddToCartAction;

public class FopPrinter{
	
	private Logger logger = Logger.getLogger(FopPrinter.class);
	
	public FopPrinter(String userConfigFile, String transformateFile) {
		logger.info("FOP init()");
		initFop(userConfigFile, transformateFile);
	}
	
	private void initFop(String userConfigFile, String transformateFile){
		try{
			File xsltfile = new File(transformateFile);
			System.out.println("patch 1 : " + xsltfile.getAbsolutePath());
			System.out.println("patch 2 : " + xsltfile.getCanonicalPath());
			
			FopFactory fopFactory = FopFactory.newInstance();
			fopFactory.setBase14KerningEnabled(true);
			fopFactory.setUserConfig(new File(userConfigFile));
	//		fopFactory.setFontBaseURL(rootPth + "/");
			
			FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
		}catch(Exception e){
			System.out.println(e);
		}
		
//		Transformer xslfoTransformer;
//		try
//		{
//			xslfoTransformer = getTransformer(transformSource);
		
		
//		StreamSource source = new StreamSource(new File("Hello.xml"));
//		StreamSource transformSource = new StreamSource(xsltfile);

//		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
	}
	
	
	

	public void raz() throws TransformerException{
//		// the XSL FO file
//		File xsltfile = new File("HelloWorld.xsl");
//		// the XML file from which we take the name
//		StreamSource source = new StreamSource(new File("Hello.xml"));
//		// creation of transform source
//		StreamSource transformSource = new StreamSource(xsltfile);
//		// create an instance of fop factory
//		FopFactory fopFactory = FopFactory.newInstance();
//		// a user agent is needed for transformation
//		FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
//		// to store output
//		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
//
//		Transformer xslfoTransformer;
//		try
//		{
//			xslfoTransformer = getTransformer(transformSource);
//			// Construct fop with desired output format
//		        Fop fop;
//			try
//			{
//				fopFactory.setUserConfig(new File("userConfig.xml"));
//				
////				d:/ECS-FOP/
//				
//				String rootPth = "d:/Eclipse/Workspace/Test/";
//	            foUserAgent.setBaseURL(rootPth + "/");
//				fopFactory.setFontBaseURL(rootPth + "/");
//				fopFactory.setSourceResolution(100);
//				fop = fopFactory.newFop("application/pdf", foUserAgent, outStream);
//				// Resulting SAX events (the generated FO) 
//				// must be piped through to FOP
//		                Result res = new SAXResult(fop.getDefaultHandler());
//
//				// Start XSLT transformation and FOP processing
//				try
//				{
//				        // everything will happen here..
//					xslfoTransformer.transform(source, res);
//					// if you want to get the PDF bytes, use the following code
//					//return outStream.toByteArray();
//
//					// if you want to save PDF file use the following code
//					File pdffile = new File("Result.pdf");
//					OutputStream out = new FileOutputStream(pdffile);
//		                        out = new java.io.BufferedOutputStream(out);
//		                        FileOutputStream str = new FileOutputStream(pdffile);
//		                        str.write(outStream.toByteArray());
//		                        str.close();
//		                        out.close();
//
//					// to write the content to out put stream
////					byte[] pdfBytes = outStream.toByteArray();
////		                        response.setContentLength(pdfBytes.length);
////		                        response.setContentType("application/pdf");
////		                        response.addHeader("Content-Disposition", 
////							"attachment;filename=pdffile.pdf");
////		                        response.getOutputStream().write(pdfBytes);
////		                        response.getOutputStream().flush();
//				}
//				catch (TransformerException e) {
//					throw e;
//				} catch (FileNotFoundException e2) {
//					// TODO Auto-generated catch block
//					e2.printStackTrace();
//				} catch (IOException e3) {
//					// TODO Auto-generated catch block
//					e3.printStackTrace();
//				}
//			}
//			catch (FOPException e) {
//				e.printStackTrace();
//			} catch (SAXException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		catch (TransformerConfigurationException e)
//		{
//			e.printStackTrace();
//		}
//		
//		
	}
	
	
	private Transformer getTransformer(StreamSource streamSource)
	{
	     TransformerFactory factory = TransformerFactory.newInstance();
	     try {
			Transformer transformer = factory.newTransformer();
		} catch (TransformerConfigurationException e1) {
			e1.printStackTrace();
		}

		try {
			return factory.newTransformer(streamSource);

		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
	
}

package pl.alios.utils.fop;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.StringReader;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.log4j.Logger;

public class FopPrinter{
	
	private Logger logger = Logger.getLogger(FopPrinter.class);
	private Transformer transformer;
	private FOUserAgent foUserAgent;
	private FopFactory fopFactory;
	
	
	public InputStream getInovice(String xmlInovice){
		InputStream inputStream = null;
		try{
			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			Fop fop = fopFactory.newFop("application/pdf", foUserAgent, outputStream);
			Source src = new StreamSource(new StringReader(xmlInovice));
	        Result res = new SAXResult(fop.getDefaultHandler());
	        transformer.transform(src, res);
	        inputStream = (InputStream) new ByteArrayInputStream(outputStream.toByteArray());
		} catch (NullPointerException e) {
			logger.error("Blad podczas tworzenia faktury dla xml : " + xmlInovice);
			logger.error(e);
		} catch (FOPException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
		return inputStream;
	}
	
	
	public FopPrinter(String userConfigFile, String transformateFile, String fontsPath) {
		logger.info("FOP init()");
		try{
			fopFactory = FopFactory.newInstance();
			fopFactory.setBase14KerningEnabled(true);
			fopFactory.setUserConfig(new File(userConfigFile));
			fopFactory.setFontBaseURL("file:///" + new File(fontsPath).getAbsolutePath()+ "\\");
			fopFactory.setSourceResolution(100);
			
			foUserAgent = fopFactory.newFOUserAgent();
			foUserAgent.setBaseURL("file:///" + new File(fontsPath).getAbsolutePath()+ "\\");
			foUserAgent.setAuthor("biuro@allios.pl");
            foUserAgent.setCreator("biuro@allios.pl");
            foUserAgent.setTitle("Faktureczka");
            
            TransformerFactory factory = TransformerFactory.newInstance();
            transformer = factory.newTransformer(new StreamSource(new File(transformateFile)));
			
		}catch(Exception e){
			logger.error("Problem z inicjalizacja FOP-a : " + e);
		}
	}
	
}
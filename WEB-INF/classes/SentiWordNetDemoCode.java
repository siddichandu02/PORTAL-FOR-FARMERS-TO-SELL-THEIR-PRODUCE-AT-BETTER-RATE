
package CT;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class SentiWordNetDemoCode {

	private Map<String, Double> pos;
	private Map<String, Double> neg;

	public SentiWordNetDemoCode(String pathToSWN) throws IOException {
		// This is our main dictionary representation
		pos = new HashMap<String, Double>();
		neg = new HashMap<String, Double>();

		// From String to list of doubles.
		
		BufferedReader csv = null;
		try {
			csv = new BufferedReader(new FileReader(pathToSWN));
			int lineNumber = 0;
			int i = 0;

			String line;

			while ((line = csv.readLine()) != null) {
			
				lineNumber++;

				if (!line.trim().startsWith("#")) {
					String[] data = line.split("\t");
					String wordTypeMarker = data[0];
				
					if (data.length != 6) {
						throw new IllegalArgumentException(
								"Incorrect tabulation format in file, line: "
									+ lineNumber);
								
					}
//					System.out.println(data[4]+"");
					String data1[]=data[4].split("\\s+");
					String data2[]=null;
					String data3[]=null;
					
					
					
						data2=data[4].split("#");

//					System.out.println(data2[0]+"------"+data[2]+"----"+data[3]);
					Object o=pos.put(data2[0],Double.parseDouble(data[2]));
					if(o==null){
					
					}else{
					double d1=(double)o;
					if(d1>Double.parseDouble(data[2]))
						pos.put(data2[0],d1);
					}	


//					neg.put(data2[0],Double.parseDouble(data[3]));	
					Object o2=neg.put(data2[0],Double.parseDouble(data[3]));
					if(o2==null){
					
					}else{
					double d1=(double)o2;
					if(d1>Double.parseDouble(data[3]))
						neg.put(data2[0],d1);
					}	
	
					
				
				}
			}} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (csv != null) {
				csv.close();
			}
		
		}
	}

	public double posextract(String word) {
		return pos.get(word);
	}
	public double negextract(String word) {
		return neg.get(word);
	}
	
	public static void main(String [] args) throws IOException {
		if(args.length<1) {
			System.err.println("Usage: java SentiWordNetDemoCode <pathToSentiWordNetFile>");
			return;
		}
		
		String pathToSWN = args[0];
		SentiWordNetDemoCode sentiwordnet = new SentiWordNetDemoCode(pathToSWN);
//		System.out.println(sentiwordnet.posextract("good"));
		System.out.println(sentiwordnet.negextract("not bad"));

	//	System.out.println("good#a "+sentiwordnet.extract("good", "a"));
	//	System.out.println("bad#a "+sentiwordnet.extract("spare", "a"));
	}
}
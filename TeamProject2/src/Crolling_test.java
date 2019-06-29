import java.io.File;
import java.util.ArrayList;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.CrollingDTO;
import com.sun.xml.internal.ws.api.pipe.NextAction;

public class Crolling_test 
{
	private final static String address = "https://www.youtube.com/feed/trending";
	public static void main(String args[]) throws Exception
	{
		
		Document doc = Jsoup.connect(address).get(); //header("User-Agent", "Chrome/75.0.3770.100")
		Elements title = doc.getElementsByTag("a");
		Elements href = title.select("[href]");
		CrollingDTO dto = list_up();
		//System.out.println(dto.getList_title().get(2));
		for(int i=0; i<dto.getList_img().size(); i++)
		{
			System.out.println(dto.getList_img().get(i));

		}



		
		
		 
	}
	
	public static CrollingDTO list_up() throws Exception
	{
		String address = "https://www.youtube.com/feed/trending";
		Document doc = Jsoup.connect(address).get(); //header("User-Agent", "Chrome/75.0.3770.100")
		//System.out.println(doc);
		Elements title = doc.getElementsByTag("a");
		Elements href = title.select("[href]");
		ArrayList<String> list_img = new ArrayList<String>();
		ArrayList<String> list_title = new ArrayList<String>();
		ArrayList<String> list_link = new ArrayList<String>();
		
		
		for(int i=0; i<href.size(); i++) 
		{ 
			String src = href.get(i).attr("href");
			
			

			try
			{
				if(src.charAt(1)=='w')
				{
					
					if(i%2==0)
					{
						list_link.add("https://www.youtube.com/"+src);
					}
					
					if(!href.get(i).attr("title").equals(""))
					{
						list_title.add(href.get(i).attr("title"));
					}
					
					
					
					if(href.get(i).select("img").attr("data-thumb")=="")
					{
						list_img.add(href.get(i).select("img").attr("src"));
						
					}
					else
					{
						list_img.add(href.get(i).select("img").attr("data-thumb"));
					}
					
					
				}
				
			}
			catch (Exception e) {
				continue;
			}
			
			
		}

		CrollingDTO dto = new CrollingDTO(list_img, list_title, list_link);
		return dto;
		
		 
	}

}

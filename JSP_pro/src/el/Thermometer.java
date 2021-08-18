package el;
import java.util.*;
public class Thermometer {
	private Map<String, Double> map = new HashMap<String, Double>();
	
	public void setCelsius(String location, Double value) {
		map.put(location,  value);
	}
	
	public Double getCelsius(String location) {
		return map.get(location);
	}
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius == null) {
			return null;
		}
		return celsius.doubleValue() * 1.8 + 32.0;
	}
	
	public String getInfo() {
		return "�µ��� ��ȯ�� 1.1";
	}
	
	public String getName() {
		return "��ȯ��";
	}
}

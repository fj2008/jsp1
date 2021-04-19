package chapter4;

import java.util.ArrayList;
import java.util.List;

public class GuGuDan {
	public ArrayList<Integer> process(int gugudan){
		List<Integer> result = new ArrayList<>();
		
		for(int i=1; i<=9; i++) {
			result.add(gugudan*1);
		}
		return (ArrayList<Integer>) result;
	}
}

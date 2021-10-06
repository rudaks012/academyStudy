package co.micol.prj;

import java.util.HashMap;
// index 지수가 없다. hash table -> key 값으써 value 값을 가져온다.
import java.util.Map;

public class MapTest {
	private Map<String, String> map = new HashMap<String, String>();
	// key & value -> 첫 선언문이 뒤뢰 따라 들어가야함

	public void setMap(String id, String password) {
		// 맵구조에 데이터 삽입
		map.put(id, password);
	}

	public String getMap(String id) { // 맵 에서 Key에 맞는 데이터를 가져온다.

		return map.get(id);

	}

}

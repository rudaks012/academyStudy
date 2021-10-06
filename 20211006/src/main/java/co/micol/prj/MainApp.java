package co.micol.prj;

import java.util.HashMap;
import java.util.Map;

import co.micol.prj.vo.Bicle;
import co.micol.prj.vo.Car;
import co.micol.prj.vo.Command;

public class MainApp {
	private static Map<String,Command> map = new HashMap<String,Command>();
	
	
			
	public static void main(String[] args) {
		map.put("car",new Car());
		map.put("bicle",new Bicle());
		
		//하나의 이름으로서 하부객체를 이용함
		Command command = map.get("bicle");
		command.run();
	}
}

//private static DevVO vo; // VO 객체 인스턴스 정의
//
//public static void main(String[] args) {
//	List<DevVO> list = new ArrayList<DevVO>();
//	vo = new DevVO();
//	vo.setId(1);
//	vo.setName("홍길동");
//	vo.setAddress("대구 광역시 중구");
//	vo.setAge(23);
//
//	list.add(vo); // ArrayList에 객체 하나를 추가
//	vo = new DevVO(); // 객체초기화
//	vo.setId(2);
//	vo.setName("홍길순");
//	vo.setAddress("대구 광역시 서구");
//	vo.setAge(23);
//
//	list.add(vo);
//
//	System.out.println(list.get(0).getId());
//	System.out.println(list.get(0).getName());
//	System.out.println(list.get(0).getAddress());
//	System.out.println(list.get(0).getAge());
//	System.out.println("===================");
//	list.get(1).toString(); // list 가 가지고 있는 첫번째 요소를 출력한다.
//	System.out.println("===================");
//	
//	for (int i = 0; i < list.size(); i++) {	//list 전체를 출력
//		list.get(i).toString();
//	}
//	System.out.println("======전체가져오기=========");
//	
//	for(DevVO vo : list) {
//		vo.toString();
//	}
//}
//-------------------------------------------------list 문 사용
//mapTest = new MapTest();
//
//mapTest.setMap("mico", "1234");
//mapTest.setMap("park", "2345");
//mapTest.setMap("lee", "5678");
//mapTest.setMap("kim", "0912");
//
//String pw = mapTest.getMap("mico");
//System.out.println(pw);
//
//Map<String, Integer> map = new HashMap<String, Integer>();
//// int float double 등이 안되서 레퍼런스 값을 넣음.
//map.put("age", 23);
//map.put("id", 6);
//
//int age = map.get("age");
//System.out.println(age);
//System.out.println(map.get("id"));

//Map<String, DevVO> mapVo = new HashMap<String, DevVO>();
//DevVO vo = new DevVO();
//vo.setId(1);
//vo.setName("홍길동");
//vo.setAddress("서울");
//vo.setAge(20);
//mapVo.put("홍길동", vo);
//
//vo = new DevVO();
//vo.setId(2);
//vo.setName("박수홍");
//vo.setAddress("대구");
//vo.setAge(23);
//mapVo.put("박수홍", vo);
//
//
//DevVO vo1 = new DevVO();
//vo1 = mapVo.get("홍길동");
//vo.toString();

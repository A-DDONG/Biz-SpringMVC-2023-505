# Tiles Layout 설정
- JSP 를 위한 Layout 설정 도구
- tiles 를 설정하기 위한 dependencies 설정
- spring 5.x 이상에서는 tiles-extras 만 설정해도 기타 필요한 dependenct 를 모두 import 해준다
- 다만 tiles-extras 를 설정한 후 Maven Dependencies 에 tiles-core 가 함께 import 되었는지 확인할 필요가 있다
- 만약 tiles-core 가 import 되지 않았을 경우 tiles-extras 와 같은 version 의 tiles-core 를 설정해주어야한다
```xml
	<dependencies>
		<!-- https://mvnrepository.com/artifact/org.apache.tiles/tiles-extras -->
		<dependency>
			<groupId>org.apache.tiles</groupId>
			<artifactId>tiles-extras</artifactId>
			<version>3.0.8</version>
		</dependency>
	</dependencies>
```
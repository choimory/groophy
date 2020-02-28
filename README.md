# groophy

MVC2 패턴을 적용시킨 스터디그룹 모집 사이트 입니다.

### 사용기술

- Java, JSP, Spring, MySQL, JdbcTemplate, Mybatis  
- Bootstrap  
- TortoiseSVN

***


# 목차
- ### 소개
- ### 회원 가입
	- Spring Security
	- 파일 업로드
- ### 회원 정보
	- 인터셉터
- ### 그룹 검색
- ### 그룹 모집
- ### 그룹 정보
- ### 멤버 수락
- ### 멤버 목록
- ### 문서 작성
- ### 아키텍트


***


# 소개

- ### 프로젝트 소개

네이버, 다음같은 포털사이트의 ‘카페’와 유사한 스터디 그룹 모임 사이트 입니다.
방을 생성 한 후, 방장이 대기 공간 에서 타 회원들의 신청을 수락/거절,
그 뒤 모인 멤버들과 스터디를 시작하면 해당 그룹만의 공간을 제공 합니다.

- ### 제가 맡은 역할

메인, 검색, 회원, 그룹 모집, 그룹 관리 까지의 부분들을 담당하였고,
PM 을 맡아 기획, 진행, 문서작성을 이끌었으며,
라이브러리 설정, 서버 설정, 컨테이너 설정 등 아키텍처 역할도 겸했습니다.


***


# 회원 가입

![text](/images/read%20me/join.png "")

회원가입 페이지 입니다.  
Spring Security 를 이용해 비밀번호를 암호화 하여 저장하며,  
Apache commons io 를 이용한 파일 업로드 기능이 포함되어 있습니다. 

# Spring Security

![text](/images/read%20me/spring%20security.png "")

Spring Security를 이용해 입력 받은 비밀번호를 64bit 암호화 하여 저장합니다.  
DB에 저장된 암호화된 비밀번호를 Spring Security를 이용해 입력 값과 일치 여부를 비교합니다.

# 파일 업로드

![text](/images/read%20me/file%20upload.png "")

업로드 된 파일을 사용자로부터 건내 받습니다.   
건내 받은 파일의 정보는 DB에, 파일은 서버 내 저장소에 생성합니다.

***


# 회원 정보

![text](/images/read%20me/member%20info.png "")

회원정보 페이지 입니다.  
로그인시 저장된 세션 을 이용해 해당 회원의 정보를 DB로부터 불러옵니다.  
로그인 여부를 확인하는 인터셉터 기능이 적용되어 있습니다.


# 인터셉터

![text](/images/read%20me/intercept.png "")

로그인 여부 확인, 운영진 여부 확인 등  
다양한 인터셉터들을 작성하여, 필요한 요청에 적용시켜가며 상황에 따라 활용합니다.


***


# 그룹 검색

![text](/images/read%20me/group%20search.png "")

그룹 검색 페이지 입니다.  
Mybatis 의 DynamicSQL을 이용해,  
조건에 해당하는 그룹 목록을 동적으로 가져옵니다.



***


# 그룹 모집

![text](/images/read%20me/group%20incruit.jpg "")

그룹 모집 페이지입니다.  
해당 그룹의 정보 확인 및 참여 신청, 댓글을 작성할 수 있습니다.


***


# 그룹 정보

![text](/images/read%20me/group%20info.png "")

그룹 관리 페이지 입니다.  
해당 그룹의 각종 정보들을 DB로부터 읽어옵니다.  
해당 페이지와 이하 모든 페이지에 인터셉터 를 적용하여,  
해당 그룹의 조장 여부를 확인합니다.


***


# 멤버 수락

![text](/images/read%20me/group%20accept.png "")

그룹 참여를 신청한 회원들의 목록입니다.  
특정 그룹에 참여 신청한 사람들의 정보를 DB로부터 읽어옵니다.


***


# 멤버 목록

![text](/images/read%20me/group%20member.png "")

참여가 확정된 회원들의 목록입니다.  
신청이 수락된 회원들만 DB로부터 읽어옵니다.


***


# 문서 작성

![text](/images/read%20me/document.png "")

WBS 를 이용한 일정관리, 요구사항 정의서, Use Case 와 Diagram.  
요구사항과 각종 다이어그램 및 설계서 작성을 거치며,  
서비스의 전체 구조와 세부 흐름을 구상했습니다.  


***


# 아키텍트

![text](/images/read%20me/arcitect.png "")

- Maven을 이용한 각종 라이브러리 관리  
- web.xml 관리  
- 스프링 컨테이너 를 용도별로 분류하여 관리


***


 
# JSP Project 3조

쌍용강북교육센터

git_hub 기반의 스프링을 활용한 실전 프레임워크 설계와 구축 개발자

웹 프로그래밍 실습 프로젝트 3조 팀명 팀의

GROUPPL 서비스 개발 프로젝트.





## Team

팀명

- 김태영

- 마성익

- 박진완

- 이인재: 팀장

- 전창건

![team](http://sistfers.github.io/GROUPPL/documents/team.png)





## 프로젝트 진행 동기 및 목적

> 실제 서비스 기획과 프로젝트를 수행함으로써
>
> Java, Oracle, Web(HTML, CSS, JavaScript), Web Programming(Servlet, JSP) 등
>
> 자바 웹 개발 전반에 걸친 주요 기술에 대한 숙달.





## Service

프로젝트 관리 시스템.

> "누구나 할 수 있는 프로젝트 및 개인일정 관리"




### 소개

> 누구나 자신이 원하는 프로젝트 팀을 간편하게 결성하거나 프로젝트팀에 가입하여
>
> 개인과 팀간의 공유된 일정에 대한 빠른 피드백, 효율적 업무분배를 통해,
>
> 프로젝트의 진행효율과 업무 집중도를 높일 수 있는 서비스를 제공합니다.




### 참고

> - [Github](https://github.com)
> - [Trello](https://trello.com)
> - [Facebook](https://www.facebook.com)
> - [bootstrapk](http://bootstrapk.com/getting-started/#examples)


### 기능 - 수정필요



#### 회원

- 회원가입
- 로그인

- 정보 수정

- 탈퇴

- 





## Plan - 수정필요

01. [2017-02-02 기획](http://sistfers.github.io/GROUPPL/documents/reports/20170202_planning.md)

14. [2017-02-21 발표](http://sistfers.github.io/GROUPPL/documents/reports/20170221_planning.md)

![Plan](http://sistfers.github.io/GROUPPL/documents/plan.png)



## Site

[GitHub Pages](http://sistfers.github.io/GROUPPL)





## Repository

[GitHub](http://github.com/sistfers/GROUPPL)





## Conventions - 수정필요

[Conventions]()





## Documents - 수정필요

[Documents](http://github.com/sistfers/GROUPPL)

[Java SE Javadocs](http://docs.oracle.com/javase/8/docs/api)

[Java EE Javadocs](http://docs.oracle.com/javaee/7/api)

[Tomcat Javadocs](http://tomcat.apache.org/tomcat-8.5-doc/api)





## Modeling - 수정필요

[Modeling](http://github.com/sistfers/GROUPPL)




### Database UML - 수정필요

![Database](http://sistfers.github.io/GROUPPL/modeling/database.png)




### Class UML - 수정필요

![Class](http://sistfers.github.io/GROUPPL/modeling/class.png)




### Sequence UML - 수정필요

![Sequence](http://sistfers.github.io/GROUPPL/modeling/sequence.png)


■ 회원가입, 로그인•로그아웃, 프로젝트 팀 관리, 개인•팀 일정 및 업무 관리, 게시판, 쪽지, 
자료 업로드
(추가) 위치기반 서비스, 접속 체크, SNS연동

■ 역할분담
이인재(조장) - 프로젝트 기획 및 개발 총괄 
박진완 - 주요 개발 코딩 및 테이블 분석설계
마성익 - 주요 개발 코딩 및 테이블 분석설계
김태영 - 주요 개발 코딩 및 테이블 분석설계
전창건 - 주요 개발 코딩 및 테이블 분석설계

■ 시스템 분석/설계
1. 우리 팀은 프로젝트 팀과 개인의 업무 및 일정관리 웹사이트를 만들고자 한다.

2. 사이트는 프로젝트 보드, 일정 및 업무 관리, 프로젝트 팀 관리로 구성되어있다.

1. 프로젝트 보드는 소속된 프로젝트 팀의 최신글을 모아 보여준다.
3-1. 소속된 팀은 상단 탭으로 구분된다.
3-2. 보기방식을 변경하는 버튼으로 목록형, 뉴스피드형으로 전환할 수 있다.
3-3. 최신글이 상단에 표시되며 스크롤로 화면을 내려가면 글을 확인한다.
3-4. 글쓰기 버튼으로 게시글 작성 페이지로 이동한다.
3-5. 본인 글을 선택하면 수정/삭제 버튼이 생성되며 클릭 시 수정/삭제페이지로 이동한다.
3-6. 메뉴바를 통해 일정, 팀 관리 페이지로 이동된다.

1. 일정 및 업무는 캘린더 형식으로 표현된다.
4-1. 체크박스를 이용하여 캘린더에 표시할 일정(개인, 소속 팀별)을 선택한다.
4-2. 개인일정을 팀 전체 혹은 특정 팀에게 공유할 수 있다.
4-3. 프로젝트의 팀장은 프로젝트의 일정 및 업무 사항을 팀 일정에 추가/삭제 한다.
4-4. 프로젝트의 팀장은 팀원들의 개인일정을 확인하여 팀 일정을 조정, 확정할 수 있다.
4-5. 팀원은 프로젝트 팀의 다른 팀원들의 일정 및 업무 진행 상태를 확인할 수 있다.
1. 프로젝트 팀 관리는 새로운 프로젝트 팀을 개설, 팀원 모집 및 지원, 팀 관리를 한다.
	5-1. 새로운 프로젝트를 만들어 팀원들을 모집할 수 있다.
	5-2. 개인은 본인이 소속된 프로젝트 팀을 확인할 수 있다. 
	5-3. 개인은 인원 모집중인 프로젝트에 지원 할 수 있고 새로운 인원을 초대 할 수 있다. 
	5-4. 초대 가능 상태의 인원들의 목록을 통해 개인의 프로젝트 경험 및 분야를 확인할 수 있다.

## 개발 환경 및 개발 툴

- [Java SE 8 (Oracle JDK 1.8.x)](http://jcp.org)

- [Oracle Database 11g Release 2](http://oracle.com)

- [Eclipse Neon (4.6.x)](http://eclipse.org)

- [Apache Tomcat (8.5.x)](http://tomcat.apache.org)

- [Git](http://git-scm.com)

- [GitHub](https://github.com)

- [SilkSvn](https://silksvn.com)





## 적용 기술 및 라이브러리 의존성

- [Servlet 3.1.x](http://jcp.org/en/jsr/detail?id=340)

- [JSP 2.3.x](http://jcp.org/en/jsr/detail?id=245)

- [EL 3.0.x](http://jcp.org/en/jsr/detail?id=341)

- [JSTL 1.2.x](http://jcp.org/en/jsr/detail?id=52)

- [Oracle 11g Release 2 (11.2) Standard SQL](http://docs.oracle.com/cd/E11882_01/server.112/e41084/ap_standard_sql.htm)

- [HTML5](http://w3.org/TR/html5)

- [CSS3](http://w3.org/TR/CSS)

- [JavaScript (ECMA-262 ECMAScript)](http://ecma-international.org/publications/standards/Ecma-262.htm)

- [jQuery 3.1.x](http://jquery.com)

- [jQuery UI 1.12.x](http://jqueryui.com)

- [Bootstrap 3.3.x](http://bootstrapk.com)







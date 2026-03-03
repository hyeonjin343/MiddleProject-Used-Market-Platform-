# 🛒 Used Market Platform

Spring Framework + MyBatis 기반의 중고 거래 웹 서비스입니다.

---

## 📌 프로젝트 소개

사용자가 상품을 등록하고 거래할 수 있는 웹 기반 중고 거래 플랫폼입니다.  
회원 관리, 상품 CRUD, 검색 및 페이징 기능을 중심으로 구현하였습니다.

---

## 🛠 기술 스택

### Backend
- Java
- Spring Framework (Spring MVC)
- MyBatis

### Database
- Oracle DB
- SQL Developer (DB 관리 툴)

### Frontend
- JSP
- HTML / CSS
- JavaScript

### Tool
- Eclipse
- Apache Tomcat

---

## 🧩 주요 기능

- 회원가입 / 로그인
- 상품 등록, 수정, 삭제
- 상품 검색 기능 (키워드, 카테고리)
- 페이징 처리
- 이미지 업로드 기능

---

## 🗂 프로젝트 구조

### 📁 src

- `board.controller` : 게시판 관련 요청 처리
- `board.vo` : 게시판 데이터 객체
- `member.controller` : 회원 관련 요청 처리
- `member.service` : 회원 비즈니스 로직
- `member.dao` : DB 접근 계층
- `member.mapper` : MyBatis Mapper
- `member.vo` : 회원 데이터 객체
- `config` : Spring 설정 파일

### 📁 WebContent

- `css` : 스타일 파일
- `js` : JavaScript 파일
- `include` : 공통 JSP
- `UI` : 화면 관련 JSP
- `WEB-INF` : 설정 및 보호 영역
- `insert.jsp`
- `join.jsp`
- `loginForm.jsp`
- `notice.jsp`

---

Spring MVC 패턴을 기반으로 Controller-Service-DAO 계층 구조로 설계하였으며,  
기능별(board, member) 패키지 분리를 통해 유지보수성과 확장성을 고려하였습니다.

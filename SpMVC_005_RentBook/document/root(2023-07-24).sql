-- 여기는 RentBook root 로 접속한 화면
CREATE DATABASE rentBookDB;
use rentBookDB;
CREATE TABLE tbl_books(
	B_CODE	VARCHAR(13)		PRIMARY KEY,
	B_NAME	VARCHAR(125)	NOT NULL,
	B_AUTHOR	VARCHAR(125)	NOT NULL,	
	B_COMP	VARCHAR(125),
	B_YEAR	INT	NOT NULL,
	B_IPRICE	INT,
	B_RPRICE	INT	NOT NULL	
);
DESC tbl_books;
DROP TABLE tbl_books;
SHOW TABLES;

INSERT INTO tbl_books(
B_CODE,B_NAME,B_AUTHOR,B_COMP,B_YEAR,B_IPRICE,B_RPRICE
) VALUES (
'001','남극의 눈물','뗑컨','뗑컨사','2010','30000','3000'
);
SELECT * FROM tbl_books;
DELETE FROM tbl_books WHERE B_CODE = '';

USE rentbookDB;

CREATE TABLE tbl_members (
	M_CODE	VARCHAR(6)		PRIMARY KEY,
	M_NAME	VARCHAR(125)	NOT NULL,	
	M_TEL	VARCHAR(15)	NOT NULL,	
	M_ADDR	VARCHAR(125)		
);
INSERT INTO tbl_members(m_code,m_name,m_tel,m_addr) VALUES('000001','홍길동','010-1111-1111','광주광역시');
DESC tbl_members;
SELECT * FROM tbl_members;
DROP TABLE tbl_members;

CREATE TABLE tbl_rent_book (
	RENT_SEQ	BIGINT		PRIMARY KEY	AUTO_INCREMENT,
	RENT_DATE	VARCHAR(10)	NOT NULL,
	RENT_RETURN_DATE	VARCHAR(10)	NOT NULL,
	RENT_BCODE	VARCHAR(13)	NOT NULL,		
	RENT_MCODE	VARCHAR(6)	NOT NULL,		
	RENT_RETURN_YN	VARCHAR(1),			
	RENT_POINT	INT,			
	RENT_PRICE	INT			
);
SELECT * FROM tbl_rent_book;
DESC tbl_rent_book;
TRUNCATE TABLE tbl_rent_book;

SELECT COUNT(*) FROM tbl_books;
SELECT * FROM tbl_books LIMIT 10;

SELECT COUNT(*) FROM tbl_members;

SELECT * FROM tbl_rent_book R
LEFT JOIN tbl_members M
	ON R.rent_mcode = M.m_code
LEFT JOIN tbl_books B
	ON R.rent_bcode = B.b_code;

-- 전체 데이터 중에서 5페이지에서 10개를 보고 싶다
-- 전제 데이터 중 1페이지에서 10개 : 0 ~ 9번까지 보여주기
-- 1페이지일 경우 시작값 1이 될려면 (Page - 1 ) * 10
-- 전제 데이터 중 1페이지에서 10개 : 10 ~ 19번까지
-- 2페이지일 경우 시작값이 10이 되려면 (page - 1) * 10
    
-- 처음 시작에서 10개를 건너뛰고 : OFFSET 10
-- 그 위치부터 10개를 SELECT 하라
SELECT * FROM tbl_books
ORDER BY B_CODE LIMIT 10 OFFSET 10;
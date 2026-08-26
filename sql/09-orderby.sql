-- 09-orderby.sql

-- students 테이블 생성
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL
);

-- 데이터 입력
INSERT INTO students (name, age) VALUES
('김민수', 25),
('이서연', 22),
('박지훈', 30),
('최유진', 28),
('정다은', 35),
('한지민', 27),
('오세훈', 24),
('강하늘', 31),
('윤아름', 29),
('신현우', 26),
('조수빈', 21),
('백지훈', 33),
('임도윤', 38),
('문서준', 24),
('장예린', 40),
('홍길동', 37),
('노지훈', 23),
('서민재', 28),
('고은별', 34),
('유지호', 36),
('송하윤', 32),
('양준혁', 27),
('권소희', 39),
('안재현', 25),
('배수지', 29),
('남도현', 26),
('진예린', 30),
('심지호', 22),
('차은우', 24),
('황민지', 35);

SELECT * FROM students;

-- grade 컬럼추가, varcher(1) default 'B'

-- 08-where.sql

CREATE TABLE students (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(10),
	age INT
);

INSERT INTO students (name, age) VALUES
('김철수', 20),
('이영희', 21),
('박민수', 22),
('최지우', 19),
('정다은', 23),
('강하늘', 20),
('조현우', 25),
('윤서연', 22),
('장동건', 24),
('임재범', 21),
('한소희', 19),
('오지민', 23),
('서준우', 20),
('신재하', 22),
('권유리', 24),
('황정민', 25),
('송혜교', 21),
('전지현', 20),
('유재석', 23),
('이효리', 22);

select * FROM students;

-- 특정 컬럼의 값
-- 같음 (=)
SELECT * from students where name = '황정민';
-- 다름(!=)

-- 다중 선택
SELECT * from students where id = 1 or age = 20 or age =21;

-- 텍스트 패턴 : LIKE (% -> 있을 수도 / 없을 수)
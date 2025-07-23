USE testdatabase;

-- employees 테이블 생성 
CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 직원 데이터를 추가 
INSERT INTO employees (name, position, salary) VALUES('혜린','PM',90000);
INSERT INTO employees (name, position, salary) VALUES('은우','Frontend',80000);
INSERT INTO employees (name, position, salary) VALUES('가을','Backend',92000);
INSERT INTO employees (name, position, salary) VALUES('지수','Frontend',78000);
INSERT INTO employees (name, position, salary) VALUES('민혁','Frontend',96000);
INSERT INTO employees (name, position, salary) VALUES('하온','Backend',130000);

-- 모든직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성  
SELECT name, salary FROM employees;

-- Frontend 직책을 가진 직원중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회
SELECT name, salary FROM employees WHERE position = 'Frontend' AND salary <= 90000;

-- PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인
UPDATE employees SET salary = salary * 1.10 WHERE position = 'PM';
SELECT * FROM employees WHERE position = 'Quality Assurance';

-- 모든 Backend 직책을 가진 직원의 연봉을 5% 인상
UPDATE employees SET salary = salary * 1.05 WHERE position = 'Backend';

-- 민혁 사원의 데이터를 삭제
DELETE FROM employees WHERE name = '민혁';

-- 모든 직원을 position 별로 그룹화 하여 각 직책의 평균 연봉을 계산
SELECT position, AVG(salary) AS average_salary FROM employees GROUP BY position;

-- employees 테이블을 삭제
DROP TABLE employees;

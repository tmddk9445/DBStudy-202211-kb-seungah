-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- db_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `db_study`;
CREATE DATABASE IF NOT EXISTS `db_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study`;

-- 테이블 db_study.order_dtl 구조 내보내기
DROP TABLE IF EXISTS `order_dtl`;
CREATE TABLE IF NOT EXISTS `order_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT '0',
  `product_id` int DEFAULT '0',
  `order_stock` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.order_dtl:~2 rows (대략적) 내보내기
DELETE FROM `order_dtl`;
INSERT INTO `order_dtl` (`id`, `order_id`, `product_id`, `order_stock`) VALUES
	(1, 1, 1, 3),
	(2, 1, 2, 10);

-- 테이블 db_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=sjis COLLATE=sjis_bin;

-- 테이블 데이터 db_study.order_mst:~1 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`id`, `user_id`) VALUES
	(1, 1);

-- 테이블 db_study.product_mst 구조 내보내기
DROP TABLE IF EXISTS `product_mst`;
CREATE TABLE IF NOT EXISTS `product_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.product_mst:~6 rows (대략적) 내보내기
DELETE FROM `product_mst`;
INSERT INTO `product_mst` (`id`, `product_name`, `product_price`) VALUES
	(1, '스타벅스 블랙 텀블러', 25000),
	(2, '스타벅스 화이트 텀블러', 30000),
	(3, '스타벅스 블루 텀블러', 20000),
	(4, '스타벅스 블루 머그컵', 20000),
	(5, '스타벅스 핑크 텀블러', 25000),
	(6, '스타벅스 퍼플 텀블러', 10000);

-- 테이블 db_study.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `student_year` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.student_mst:~9 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `name`, `student_year`, `score`) VALUES
	(1, '임지현', 1, 80),
	(2, '신경수', 2, 100),
	(4, '문승주', 1, 85),
	(5, '장건녕', 2, 95),
	(6, '박수현', 3, 90),
	(7, '황석민', 1, 80),
	(8, '박준현', 2, 100),
	(9, '이승아', 3, 90),
	(10, NULL, 1, 100);

-- 테이블 db_study.study_notice_img 구조 내보내기
DROP TABLE IF EXISTS `study_notice_img`;
CREATE TABLE IF NOT EXISTS `study_notice_img` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notice_id` int NOT NULL DEFAULT '0',
  `img_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `img_name` (`img_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_img:~7 rows (대략적) 내보내기
DELETE FROM `study_notice_img`;
INSERT INTO `study_notice_img` (`id`, `notice_id`, `img_name`) VALUES
	(1, 1, 'a.png'),
	(2, 1, 'b.png'),
	(3, 2, 'c.png'),
	(4, 2, 'd.png'),
	(5, 2, 'e.png'),
	(6, 3, 'f.png'),
	(7, 3, 'g.png');

-- 테이블 db_study.study_notice_mst 구조 내보내기
DROP TABLE IF EXISTS `study_notice_mst`;
CREATE TABLE IF NOT EXISTS `study_notice_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `writer_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_mst:~3 rows (대략적) 내보내기
DELETE FROM `study_notice_mst`;
INSERT INTO `study_notice_mst` (`id`, `title`, `content`, `writer_id`) VALUES
	(1, '첫번째 공지사항', 'aaa', 1),
	(2, '두번째 공지사항', 'bbb', 1),
	(3, '세번째 공지사항', 'ccc', 2);

-- 테이블 db_study.study_writer_mst 구조 내보내기
DROP TABLE IF EXISTS `study_writer_mst`;
CREATE TABLE IF NOT EXISTS `study_writer_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_writer_mst:~2 rows (대략적) 내보내기
DELETE FROM `study_writer_mst`;
INSERT INTO `study_writer_mst` (`id`, `name`) VALUES
	(1, '김준일'),
	(2, '김준이');

-- 테이블 db_study.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int NOT NULL,
  `phone` varchar(50) COLLATE sjis_bin DEFAULT NULL,
  `address` varchar(50) COLLATE sjis_bin DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis COLLATE=sjis_bin;

-- 테이블 데이터 db_study.user_dtl:~3 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
INSERT INTO `user_dtl` (`id`, `phone`, `address`, `create_date`, `update_date`) VALUES
	(1, NULL, NULL, '2022-12-09 10:48:12', '2022-12-09 10:48:12'),
	(2, NULL, NULL, '2022-12-09 10:48:12', '2022-12-09 10:48:12'),
	(3, NULL, NULL, '2022-12-09 10:48:12', '2022-12-09 10:48:12');

-- 테이블 db_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `passward` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `passward` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.user_mst:~4 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`, `passward`, `name`, `email`, `create_date`, `update_date`) VALUES
	(1, 'bbb', '1234', '홍길동', 'bbb@gmail.com', '2022-12-09 10:48:12', '2022-12-09 10:48:12'),
	(2, 'aaa', '1234', '홍길동', 'aaa@gmail.com', '2022-12-09 10:48:12', '2022-12-09 10:48:12'),
	(3, 'ccc', '1234', '홍길동', 'bbb@gmail.com', '2022-12-09 10:48:12', '2022-12-09 10:48:12'),
	(4, 'ddd', '1234', '홍길동', 'bbb@gmail.com', '2022-12-09 10:48:12', '2022-12-09 10:48:12');

-- 트리거 db_study.user_mst_after_insert 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_after_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN
	INSERT into
		user_dtl
		(id, create_date, update_date)
	values
		(NEW.id, NOW(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 db_study.user_mst_before_delete 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_before_delete`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_before_delete` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN /* 디테일을 지우고 나서 mst를 지워야한다. before - delete (// after - insert) */
	delete
	from
		user_dtl
	where
		id = OLD.id; /* dtl 삭제 이후 mst 삭제 */
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- db_study2 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `db_study2`;
CREATE DATABASE IF NOT EXISTS `db_study2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study2`;

-- 테이블 db_study2.course_mst 구조 내보내기
DROP TABLE IF EXISTS `course_mst`;
CREATE TABLE IF NOT EXISTS `course_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_id` int NOT NULL,
  `student_id` int NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.course_mst:~7 rows (대략적) 내보내기
DELETE FROM `course_mst`;
INSERT INTO `course_mst` (`id`, `subject_id`, `student_id`, `status_id`) VALUES
	(1, 1, 1, 1),
	(2, 2, 1, 2),
	(3, 3, 1, 2),
	(4, 1, 2, 2),
	(5, 3, 2, 1),
	(6, 1, 3, 1),
	(7, 1, 4, 2);

-- 테이블 db_study2.emp_mst 구조 내보내기
DROP TABLE IF EXISTS `emp_mst`;
CREATE TABLE IF NOT EXISTS `emp_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.emp_mst:~4 rows (대략적) 내보내기
DELETE FROM `emp_mst`;
INSERT INTO `emp_mst` (`id`, `emp_name`) VALUES
	(1, '문성현'),
	(2, '윤대휘'),
	(3, '문자영'),
	(4, '정규민');

-- 테이블 db_study2.score_mst 구조 내보내기
DROP TABLE IF EXISTS `score_mst`;
CREATE TABLE IF NOT EXISTS `score_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.score_mst:~5 rows (대략적) 내보내기
DELETE FROM `score_mst`;
INSERT INTO `score_mst` (`id`, `course_id`, `score`) VALUES
	(1, 1, 80),
	(2, 3, 90),
	(3, 3, 70),
	(4, 2, 80),
	(5, 2, 90);

-- 테이블 db_study2.status_mst 구조 내보내기
DROP TABLE IF EXISTS `status_mst`;
CREATE TABLE IF NOT EXISTS `status_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.status_mst:~2 rows (대략적) 내보내기
DELETE FROM `status_mst`;
INSERT INTO `status_mst` (`id`, `status_name`) VALUES
	(1, '수강'),
	(2, '수료');

-- 테이블 db_study2.student_dtl 구조 내보내기
DROP TABLE IF EXISTS `student_dtl`;
CREATE TABLE IF NOT EXISTS `student_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.student_dtl:~5 rows (대략적) 내보내기
DELETE FROM `student_dtl`;
INSERT INTO `student_dtl` (`id`, `emp_id`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 3);

-- 테이블 db_study2.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.student_mst:~5 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `student_name`) VALUES
	(1, '신경수'),
	(2, '고희주'),
	(3, '장건녕'),
	(4, '문승주'),
	(5, '이승아');

-- 테이블 db_study2.subject_mst 구조 내보내기
DROP TABLE IF EXISTS `subject_mst`;
CREATE TABLE IF NOT EXISTS `subject_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.subject_mst:~4 rows (대략적) 내보내기
DELETE FROM `subject_mst`;
INSERT INTO `subject_mst` (`id`, `course_name`) VALUES
	(3, 'C'),
	(1, 'java'),
	(2, 'python'),
	(4, 'web');


-- groupby_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `groupby_study`;
CREATE DATABASE IF NOT EXISTS `groupby_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `groupby_study`;

-- 테이블 groupby_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 groupby_study.order_mst:~12 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`order_id`, `product_name`, `price`, `stock`) VALUES
	(1, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 99),
	(2, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 500),
	(3, '겨울엔 기린호빵', 9900, 100),
	(4, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 50),
	(5, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 10),
	(6, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 5),
	(7, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 50),
	(8, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 100),
	(9, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 50),
	(10, '겨울엔 기린호빵', 9900, 50),
	(11, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 30),
	(12, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 10);


-- subquery_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `subquery_study`;
CREATE DATABASE IF NOT EXISTS `subquery_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `subquery_study`;

-- 테이블 subquery_study.board_mst 구조 내보내기
DROP TABLE IF EXISTS `board_mst`;
CREATE TABLE IF NOT EXISTS `board_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `read_count` int NOT NULL DEFAULT '0',
  `writer_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.board_mst:~11 rows (대략적) 내보내기
DELETE FROM `board_mst`;
INSERT INTO `board_mst` (`id`, `title`, `content`, `read_count`, `writer_id`) VALUES
	(1, '재목1', '게시글 내용1', 0, 1),
	(2, '재목2', '게시글 내용2', 0, 1),
	(3, '재목3', '게시글 내용3', 0, 1),
	(4, '재목1', '게시글 내용1', 0, 2),
	(5, '재목2', '게시글 내용2', 0, 2),
	(6, '재목3', '게시글 내용3', 0, 2),
	(7, '재목4', '게시글 내용4', 0, 1),
	(8, '재목5', '게시글 내용5', 0, 1),
	(9, '재목6', '게시글 내용6', 0, 1),
	(10, '재목4', '게시글 내용4', 0, 2),
	(11, '재목5', '게시글 내용5', 0, 2);

-- 테이블 subquery_study.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.user_dtl:~2 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
INSERT INTO `user_dtl` (`id`, `name`, `email`, `phone`) VALUES
	(1, NULL, NULL, NULL),
	(2, NULL, NULL, NULL);

-- 테이블 subquery_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`) VALUES
	(1, 'test'),
	(2, 'test2');

-- 트리거 subquery_study.user_mst_AFTER_INSERT 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_AFTER_INSERT`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_AFTER_INSERT` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN
	insert into
		user_dtl
		(id)
	values
		(new.id);

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 subquery_study.user_mst_BEFORE_DELETE 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_BEFORE_DELETE`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_BEFORE_DELETE` BEFORE DELETE ON `user_mst` FOR EACH ROW delete
    from
		user_dtl
	where
		id = old.id;//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

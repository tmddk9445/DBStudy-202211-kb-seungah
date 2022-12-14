SELECT
	om.id AS '주문번호',
	od.product_id AS '제품번호',
	pm.product_name,
	pm.product_price,
	od.order_stock,
	om.user_id,
	um.name
FROM
	order_mst AS om
	LEFT OUTER JOIN order_dt1 AS od ON(od.order_id = om.id)
	LEFT OUTER JOIN product_mst AS pm ON(pm.id = od.product_id)
	LEFT OUTER JOIN user_mst AS um ON(om.user_id = um.id)
ORDER BY
	od.id;

SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);

/*-------------------------------------------------------*/
SELECT
	*
FROM
	user_mst;
	
SELECT
	*
FROM
	user_dtl;	
	
SELECT
	*
FROM
	user_mst
	LEFT OUTER JOIN user_dtl ON (1 = 1);

SELECT
	*
FROM 
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id);
	
SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	LEFT OUTER JOIN user_mst um ON (um.id = om.user_id);
	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN order_mst om ON(om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id);
	
/*----------------------------*/
SELECT
	cm.id AS '순번',
	subm.course_name AS '과목명',
	sm.student_name AS '수강생명',
	em.emp_name AS '담당자명',
	stam.status_name AS '상태'
FROM
	course_mst cm
	LEFT OUTER JOIN subject_mst subm ON(subm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst sm ON(sm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stam ON(stam.id = cm.status_id);
	
SELECT
	*
FROM
	student_mst sm
	LEFT OUTER JOIN course_mst cm ON (cm.student_id = sm.id);	
	
SELECT
	sm.id AS '순번',
	sbm.course_name AS '과목명',
	sm.student_name AS '수강생명',
	em.emp_name AS '담당자명',
	stm.status_name AS '상태'
FROM 
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN course_mst cm ON(cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id)
ORDER BY
	sm.id,
	sbm.id;
	
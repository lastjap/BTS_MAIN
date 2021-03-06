DROP SEQUENCE MEMBER_NO_SEQ;
DROP TABLE BTS_MEMBER;

CREATE SEQUENCE MEMBER_NO_SEQ;
CREATE TABLE BTS_MEMBER (
	MEMBER_NO			NUMBER				PRIMARY KEY, 
	MEMBER_ID			VARCHAR2(200)		UNIQUE NOT NULL,
	MEMBER_PW			VARCHAR2(200)		NOT NULL,
	MEMBER_ENABLE		NUMBER				NOT NULL,
	MEMBER_AUTHORITY	VARCHAR2(200)		NOT NULL,
	MEMBER_NICKNAME		VARCHAR2(200)		NOT NULL,
	MEMBER_EMAIL		VARCHAR2(200)		NOT NULL,
	MEMBER_IMAGE		VARCHAR2(200)		NULL,
	MEMBER_REGDATE		DATE				NOT NULL
);
SELECT MESSAGE_NO_SEQ.NEXTVAL FROM DUAL;
SELECT * FROM BTS_MEMBER;
UPDATE BTS_MEMBER SET MEMBER_AUTHORITY = 'ROLE_ADMIN' WHERE MEMBER_NO = 2
DROP TABLE BTS_FRIEND;

CREATE TABLE BTS_FRIEND(
	MEMBER_NO NUMBER NOT NULL,
	FRIEND_NO NUMBER NOT NULL
)

SELECT * FROM BTS_FRIEND
INSERT INTO BTS_FRIEND VALUES(
3,2)

UPDATE BTS_MEMBER SET MEMBER_AUTHORITY = 'ROLE_ADMIN' WHERE MEMBER_NO= 2;



DROP TABLE BTS_CHATROOM;	
DROP SEQUENCE CHATROOM_NO_SEQ;

CREATE SEQUENCE CHATROOM_NO_SEQ;
CREATE TABLE BTS_CHATROOM(
	CHATROOM_NO NUMBER PRIMARY KEY,
	CHATROOM_REGDATE DATE NOT NULL
)
INSERT INTO BTS_CHATROOM VALUES(
CHATROOM_NO_SEQ.NEXTVAL,SYSDATE
)

select * from BTS_CHATROOM;
DROP TABLE BTS_CHATINFO;
CREATE TABLE BTS_CHATINFO(
	CHATROOM_NO NUMBER NOT NULL,
	MEMBER_NO NUMBER NOT NULL,
	COUNT NUMBER NOT NULL,
	CHAT_TITLE VARCHAR2(400) NOT NULL
)
select * from BTS_CHATINFO
insert into bts_chatinfo values(
	1,3,0,'테스트방'
)
update bts_chatinfo set
count = count+1
where member_no = 21;

DROP SEQUENCE MESSAGE_NO_SEQ;
DROP TABLE BTS_MESSAGE;

CREATE SEQUENCE MESSAGE_NO_SEQ;
CREATE TABLE BTS_MESSAGE(
	MESSAGE_NO NUMBER PRIMARY KEY,
	CHATROOM_NO NUMBER NOT NULL,
	MEMBER_NO NUMBER NOT NULL,
	MESSAGE_CONTENT VARCHAR2(4000) NOT NULL,
	MESSAGE_REGDATE DATE NOT NULL
)
select * from bts_message;
insert into bts_message values(
message_no_seq.nextval,1,21,'테스트21',sysdate
)



DROP SEQUENCE ROOM_NO_SEQ;
DROP TABLE BTS_ROOM;

CREATE SEQUENCE ROOM_NO_SEQ;
CREATE TABLE BTS_ROOM (
	ROOM_NO				NUMBER				PRIMARY KEY, 
	ROOM_MASTER			VARCHAR2(200)		NOT NULL,
	ROOM_NAME			VARCHAR2(200)		NOT NULL,
	ROOM_PASSWORD		VARCHAR2(200)		NULL,
	ROOM_NOWVAL			NUMBER				NOT NULL,
	ROOM_MAXVAL			NUMBER				NOT NULL,
	ROOM_REGDATE		DATE				NOT NULL,
	ROOM_ADDR			VARCHAR2(200)		UNIQUE,
	ROOM_IMAGE			VARCHAR2(200)		NOT NULL
);

SELECT * FROM BTS_ROOM ORDER BY ROOM_NO DESC;

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM1',
	'DUMMY1',
	NULL,
	0,
	1,
	SYSDATE,
	'11',
	'/bts/resources/images/broadcastingImage01.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM2',
	'DUMMY2',
	NULL,
	0,
	2,
	SYSDATE,
	'22',
	'/bts/resources/images/broadcastingImage02.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM3',
	'DUMMY3',
	NULL,
	0,
	3,
	SYSDATE,
	'33',
	'/bts/resources/images/broadcastingImage03.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM4',
	'DUMMY4',
	NULL,
	0,
	4,
	SYSDATE,
	'44',
	'/bts/resources/images/broadcastingImage04.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM5',
	'DUMMY5',
	NULL,
	0,
	5,
	SYSDATE,
	'55',
	'/bts/resources/images/broadcastingImage05.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM6',
	'DUMMY6',
	NULL,
	0,
	6,
	SYSDATE,
	'66',
	'/bts/resources/images/broadcastingImage06.png'
);

INSERT INTO BTS_ROOM VALUES(
	ROOM_NO_SEQ.NEXTVAL,
	'DUMMY ROOM7',
	'DUMMY7',
	NULL,
	0,
	7,
	SYSDATE,
	'77',
	'/bts/resources/images/broadcastingImage07.png'
);






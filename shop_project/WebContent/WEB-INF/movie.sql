CREATE TABLE movieInfo
(
    movieid         NUMBER     NOT NULL, 
    movienm         VARCHAR2(50)     NOT NULL, 
    movieimg        VARCHAR2(300)    NULL, 
    moviedesc       VARCHAR2(500)    NULL, 
    genrenm         VARCHAR2(20)     NOT NULL, 
    supervison      VARCHAR2(20)     NOT NULL, 
    watchGradeNm    VARCHAR2(20)     NOT NULL, 
    dvdamount       NUMBER              NOT NULL, 
    CONSTRAINT MOVIEINFO_PK PRIMARY KEY (movieid)
);

CREATE SEQUENCE movie_seq 
	START WITH 1
	INCREMENT BY 1
	NOCYCLE
	NOCACHE;


CREATE TABLE movieuser
(
    id         VARCHAR2(30)     NOT NULL, 
    pass       VARCHAR2(50)     NOT NULL, 
    email      VARCHAR2(200)    NOT NULL, 
    address    VARCHAR2(200)    NOT NULL, 
    CONSTRAINT MOVIEUSER_PK PRIMARY KEY (id)
);


CREATE TABLE rental
(
    rentid    NUMBER    NOT NULL, 
    rentdate    Date    NOT NULL, 
    returnYN    VARCHAR2(20)    NULL, 
    id          VARCHAR2(30) constraint rental_userid_FK references movieuser(id) on delete cascade, 
    movieid     NUMBER constraint movie_movieid_FK references movieinfo(movieid) on delete cascade,
    CONSTRAINT RENTAL_PK PRIMARY KEY (rentid)
);

CREATE SEQUENCE rental_seq 
	START WITH 1
	INCREMENT BY 1
	NOCYCLE
	NOCACHE;

	
	
INSERT INTO movieInfo
	   VALUES (movie_seq.nextval,'알라딘','aladdinPoster.jpg','머나먼 사막 속 신비의 아그라바 왕국의 시대. 
 좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 
 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 
 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…','모험','가이 리치','ALL','10');

INSERT INTO movieInfo
	   VALUES (movie_seq.nextval,'어벤져스:앤드게임','avengersPoster.jpg',
'인피니티 워 이후 절반만 살아남은 지구
 마지막 희망이 된 어벤져스
 먼저 떠난 그들을 위해 모든 것을 걸었다!
 위대한 어벤져스
 운명을 바꿀 최후의 전쟁이 펼쳐진다!','액션','안소니 루소','15','0');

INSERT INTO movieInfo 
	   VALUES (movie_seq.nextval,'라이언킹','lionPoster.jpg','새로운 세상, 너의 시대가 올 것이다!
어린 사자 ‘심바’는 프라이드 랜드의 왕인 아버지 ‘무파사’를 
 야심과 욕망이 가득한 삼촌 ‘스카’의 음모로 잃고 왕국에서도 쫓겨난다. 
 기억해라! 네가 누군지. ','모험','존 파브로','ALL','5');
	   
INSERT INTO movieInfo 
	   VALUES (movie_seq.nextval,'봉오동전투','bongoPoster.jpg',' 1920년 6월, 역사에 기록된 독립군의 첫 승리
 봉오동 죽음의 골짜기에 묻혔던 이야기가 지금부터 시작된다.','액션','원신연','15','10');
	   
INSERT INTO movieInfo 
	   VALUES (movie_seq.nextval,'토이스토리','toystoryPoster.jpg','장난감의 운명을 거부하고 떠난 새 친구 ‘포키’를 찾기 위해 길 위에 나선 ‘우디’는
 우연히 오랜 친구 ‘보핍’을 만나고 그녀를 통해 새로운 세상에 눈을 뜨게 된다.
 한편, ‘버즈’와 친구들은 사라진 ‘우디’와 ‘포키’를 찾아 세상 밖 위험천만한 모험을 떠나게 되는데…','애니메이션','조시 쿨리','ALL','4');
	   
INSERT INTO movieInfo 
	   VALUES (movie_seq.nextval,'기생충','gisaPoster.jpg','전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족.
 장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는
 모처럼 싹튼 고정수입의 희망이다.
','드라마','봉준호','15','8');


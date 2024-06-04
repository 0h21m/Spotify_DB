create database Spotify;

use Spotify;

create table 가수(
	가수ID char(10),
	이름 char(30),
	세계순위 int,
	월별청취자 int,
	설명 char(100)
	primary key(가수ID)
);

Insert Into 가수 Values ('P1000', 'Justin Bieber', 2, 77441519, 'Bieber is the #1 artist on Spotify with over 75 million monthly listners!');
Insert Into 가수 Values ('P1001', 'Halsey', 48, 30806081, 'New York-bred singer, songwriter, and multi-instrumentalist Halsey');
Insert Into 가수 Values ('P1002', 'The 1975', NULL, 9451477, '// N O T E S O N A C O N D I T I O N A L F O R M - 2 2 M A Y // L O V E');
Insert Into 가수 Values ('P1003', '태연', NULL, 3577135, 'Known as the "Certified Vocal Queen"');
Insert Into 가수 Values ('P1004', 'Ed Sheeran', 1, 83695258, 'Ed sheeran may be the quintessential pop star of the 2010s');
Insert Into 가수 Values ('P1005', 'Taylor Swift', 8, 56616710, 'Taylor Swift is that rarest of pop phenomena');
Insert Into 가수 Values ('P1006', 'Harry Styles', 4, 71815839, 'Harry Styles is releasing his new single "As It Was"');
Insert Into 가수 Values ('P1007', 'Ariana Grande', 15, 52743705, 'Ariana Grande is perhaps the quintessentail pop star');
Insert Into 가수 Values ('P1008', 'Lady Gaga', 34, 43201910, 'Academy Award, Golden Globe & Grammy-winner Lady Gaga');
Insert Into 가수 Values ('P1009', '방탄소년단', 54, 34483974, 'Record-breaking South Korean boy band BTS (aka Bangtan Boys)');
Insert Into 가수 Values ('P1010', 'ONE OK ROCK', NULL, 2363251, 'ONE OK ROCK is Japanese rock band formed in 2005');

select *
From 가수;


create table 공연정보(
	공연번호 char(10),
	공연명 char(30),
	공연장 char(40),
	도시 char(20),
	요일 date,
	판매링크 char(40),
	primary key (공연번호)
);

Insert Into 공연정보 Values ('C2000', 'Justin Bieber', 'Kia Forum', 'Inglewood', '2022-07-04', 'https://www.ticketmaster.com/justin-bieb');
Insert Into 공연정보 Values ('C2001', 'Justin Bieber', 'FNB Stadium', 'Soweto', '2022-10-02', 'https://www.songkick.com/concerts/401216');
Insert Into 공연정보 Values ('C3000', 'Halsey', 'Lakewood', 'Atlanta', '2022-07-01', 'https://concerts.livenation.com/halsey-l');
Insert Into 공연정보 Values ('C4001', 'Lady Gaga', 'Friends Arena', 'Stockholm', '2022-07-22', 'https://www.ticketmaster.com/lady-gaga-c');
Insert Into 공연정보 Values ('C5001', 'Ed Sheeran', 'Etihad Stadium', 'Manchester', '2022-06-10', 'https://www.ticketmaster.com/ed-sheera');
Insert Into 공연정보 Values ('C5002', 'Ed Sheeran', 'Etihad Stadium', 'Manchester', '2022-06-11', 'https://www.ticketmaster.com/ed-sheera');
Insert Into 공연정보 Values ('C5003', 'Ed Sheeran', 'Wembley Stadium', 'London', '2022-06-12', 'https://www.ticketmaster.com/ed-sheera');
Insert Into 공연정보 Values ('C6000', 'SUMMER SONIC 2022 TOKYO', 'ZOZO Marine Stadium', 'Chiba', '2022-08-20', 'https://eplus.jp/sf/detail/015280');

select *
From 공연정보;


create table 출연(
	가수ID char(10),
	공연번호 char(10),
	primary key (가수ID, 공연번호),
	foreign key (가수ID) references 가수(가수ID),
	foreign key (공연번호) references 공연정보(공연번호)
);

Insert Into 출연 Values ('P1000', 'C2000');
Insert Into 출연 Values ('P1000', 'C2001');
Insert Into 출연 Values ('P1001', 'C3000');
Insert Into 출연 Values ('P1008', 'C4001');
Insert Into 출연 Values ('P1004', 'C5001');
Insert Into 출연 Values ('P1004', 'C5002');
Insert Into 출연 Values ('P1004', 'C5003');
Insert Into 출연 Values ('P1002', 'C6000');
Insert Into 출연 Values ('P1010', 'C6000');

select *
From 출연;


create table 굿즈(
	가수ID char(10),
	상품번호 char(10),
	상품명 char(20),
	상품설명 char(40),
	판매링크 char(40),
	primary key (상품번호),
	foreign key (가수ID) references 가수(가수ID)
);

Insert Into 굿즈 Values ('P1004', 'a1000', '"x"(2xLP)', 'x is the brand new album from', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into 굿즈 Values ('P1004', 'b1000', 'Shape Of You T-Shirt', 'The Ed Sheeran ', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into 굿즈 Values ('P1004', 'a1001', '+ Vinyl Record', 'Protection Each record is', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into 굿즈 Values ('P1007', 'a3000', 'positions - cd', 'release date 30 october 2020', 'https://shopuk.arianagrande.com/*/*/');
Insert Into 굿즈 Values ('P1007', 'b3000', 'POSITIONS CREWNECK', 'screenprinted front + graphics', 'https://shopuk.arianagrande.com/*/*/POSI');
Insert Into 굿즈 Values ('P1002', 'b4000', 'TOOTIME T-SHIRT', 'SCREENPRINTED FRONT GRAPHICS.', 'https://store.the1975.com/*/*/TOOTIME-T');

select *
From 굿즈;


create table 앨범 (
	앨범번호 char(10),
	앨범명 char(20),
	총재생시간 time(0),
	발매일 date,
	앨범구분 char(10),
	가수ID char(10),
	primary key (앨범번호),
	foreign key (가수ID) references 가수(가수ID)
);

Insert Into 앨범 Values('D1001', 'Justice', '00:45:31', '2021-03-19', '앨범', 'P1000');
Insert Into 앨범 Values('D1002', 'Love Me', '00:03:42', '2015-10-09', '싱글', 'P1002');
Insert Into 앨범 Values('D1003', 'Weekend', '00:03:53', '2021-07-06', '싱글', 'P1003');
Insert Into 앨범 Values('D1004', '÷(Deluxe)', '00:59:33', '2017-03-13', '앨범', 'P1004');
Insert Into 앨범 Values('D1005', 'Red', '02:10:00', '2021-11-12', '앨범', 'P1005');
Insert Into 앨범 Values('D1006', 'Fine Line', '00:46:43', '2019-12-13', '앨범', 'P1006');
Insert Into 앨범 Values('D1007', 'INVU', '00:42:26', '2022-02-14', '앨범', 'P1003');
Insert Into 앨범 Values('D1008', 'Love for Sale', '00:43:55', '2021-10-01', '앨범', 'P1008');

select *
From 앨범;


create table 곡 (
	곡번호 char(10),
	곡명 char(30),
	청취제한 bit,
	총재생횟수 int,
	재생시간 time(0),
	가수ID char(10), 
	앨범번호 char(10), 
	primary key (곡번호),
	foreign key (가수ID) references 가수(가수ID),
	foreign key (앨범번호) references 앨범(앨범번호),
);

Insert Into 곡 Values('S300', 'Peaches', 1, 1143169948, '00:03:18', 'P1000', 'D1001');
Insert Into 곡 Values('S301', 'Anyone', 0, 486426268, '00:03:10', 'P1000', 'D1001');
Insert Into 곡 Values('S302', 'Lonely(with benny blanco)', 1, 601475553, '00:02:29', 'P1000', 'D1001');
Insert Into 곡 Values('S500', 'Love me', 0, 102611384, '00:03:42','P1002','D1002');
Insert Into 곡 Values('S600', 'Weekend', 0, 38308307, '00:03:53', 'P1003','D1003');
Insert Into 곡 Values('S700', 'Shape of you', 0, 345439837, '00:03:53' ,'P1004','D1004');
Insert Into 곡 Values('S701', 'Supermarket Flowers', 0, 569993798, '00:03:41' ,'P1004','D1004');
Insert Into 곡 Values('S800', '22', 0, 60377930, '00:03:50' ,'P1005','D1005');
Insert Into 곡 Values('S801', 'I Almost Do', 0, 35707784, '00:04:04' ,'P1005','D1005');
Insert Into 곡 Values('S910', 'Canyon Moon', 0, 137471817, '00:03:09' ,'P1006','D1006');
Insert Into 곡 Values('S601', 'INVU', 0, 33018091, '00:03:24', 'P1003','D1007');
Insert Into 곡 Values('S900', 'Do I Love You', 0, 1770965, '00:04:48', 'P1008','D1008');

select *
From 곡;


create table 회원(
	ID char(10),
	국가 char(20),
	이메일 char(30),
	생년월일 date,
	나이 char(20),
	요금제 char(20),
	primary key(ID)
);

Insert Into 회원 Values('kimsoyo', 'South Korea', 'aaaa@bu.ac.kr', '1999-09-09', '22', '프리미엄');
Insert Into 회원 Values('leesuman', 'South Korea', 'suman@sment.com', '2005-06-05', '17', '프리미엄');
Insert Into 회원 Values('abcdefg', 'United State', 'abc@gmail.com', '2000-11-23', '21', '무료');
Insert Into 회원 Values('jackson', 'United State', 'jackson@gmail.com', '1995-01-01', '27', '프리미엄');
Insert Into 회원 Values('oliver', 'United Kingdom', 'o_o@gmail.com', '2006-01-30', '16', '무료');
Insert Into 회원 Values('yamamoto', 'Japan', 'yamamoto@gmail.com', '1987-05-26', '35', '프리미엄');

select *
From 회원;


create table 곡_좋아요(
	ID char(10),
	곡번호 char(10),
	primary key (ID, 곡번호),
	foreign key (ID) references 회원(ID),
	foreign key (곡번호) references 곡(곡번호)
);

Insert Into 곡_좋아요 Values ('kimsoyo', 'S600');
Insert Into 곡_좋아요 Values ('kimsoyo', 'S910');
Insert Into 곡_좋아요 Values ('abcdefg', 'S700');
Insert Into 곡_좋아요 Values ('abcdefg', 'S910');
Insert Into 곡_좋아요 Values ('abcdefg', 'S500');

select *
From 곡_좋아요;


create table 앨범_좋아요(
	ID char(10),
	앨범번호 char(10),
	primary key (ID, 앨범번호),
	foreign key (ID) references 회원(ID),
	foreign key (앨범번호) references 앨범(앨범번호)
);

Insert Into 앨범_좋아요 Values ('kimsoyo', 'D1004');
Insert Into 앨범_좋아요 Values ('kimsoyo', 'D1006');
Insert Into 앨범_좋아요 Values ('oliver', 'D1001');
Insert Into 앨범_좋아요 Values ('oliver', 'D1002');
Insert Into 앨범_좋아요 Values ('leesuman', 'D1005');

select *
From 앨범_좋아요;


create table 플레이리스트(
	리스트번호 char(10),
	리스트명 char(40),
	ID char(10),
	primary key (리스트번호),
	foreign key (ID) references 회원(ID)
);

Insert Into 플레이리스트 Values('L000', 'pop', 'kimsoyo');
Insert Into 플레이리스트 Values('L001', 'kpop', 'kimsoyo');

select *
From 플레이리스트;


create table follow(
	ID char(10),
	가수ID char(10),
	primary key (ID, 가수ID),
	foreign key (ID) references 회원(ID),
	foreign key (가수ID) references 가수(가수ID),
);

Insert Into follow Values('kimsoyo', 'P1000');
Insert Into follow Values('kimsoyo', 'P1001');
Insert Into follow Values('leesuman', 'P1000');
Insert Into follow Values('abcdefg', 'P1002');
Insert Into follow Values('yamamoto', 'P1003');
Insert Into follow Values('yamamoto', 'P1007');
Insert Into follow Values('oliver', 'P1004');
Insert Into follow Values('jackson', 'P1004');
Insert Into follow Values('jackson', 'P1008');

select *
From follow;


create table 추가 (
	리스트번호 char(10),
	곡번호 char(10),
	추가날짜 date,
	primary key (리스트번호, 곡번호),
	foreign key (리스트번호) references 플레이리스트(리스트번호),
	foreign key (곡번호) references 곡(곡번호)
);

Insert Into 추가 Values('L000', 'S300', '2021-04-18');
Insert Into 추가 Values('L000', 'S301', '2022-04-22');
Insert Into 추가 Values('L000', 'S302', '2022-05-11');
Insert Into 추가 Values('L000', 'S500', '2022-05-05');
Insert Into 추가 Values('L001', 'S600', '2022-05-02');
Insert Into 추가 Values('L001', 'S700', '2022-05-04');

select *
From 추가;


create table 재생 (
	ID char(10),
	곡번호 char(10),
	재생횟수 int,
	재생일자 date,
	primary key (ID, 곡번호),
	foreign key (ID) references 회원(ID),
	foreign key (곡번호) references 곡(곡번호),
);

Insert Into 재생 Values('kimsoyo', 'S300', 6, '2022-04-18');
Insert Into 재생 Values('kimsoyo', 'S600', 32, '2022-05-20');
Insert Into 재생 Values('leesuman', 'S600', 1, '2021-12-31');
Insert Into 재생 Values('leesuman', 'S700', 5, '2021-12-10');
Insert Into 재생 Values('abcdefg', 'S300', 3, '2022-04-20');
Insert Into 재생 Values('jackson', 'S301', 11, '2022-04-20');
Insert Into 재생 Values('jackson', 'S700', 6, '2022-04-21');
Insert Into 재생 Values('oliver', 'S301', 20, '2022-06-08');
Insert Into 재생 Values('oliver', 'S700', 10, '2020-06-15');
Insert Into 재생 Values('abcdefg', 'S700', 17, '2018-10-30');

select *
From 재생;



-- 문제
--1) Ariana Grande의 굿즈와 판매링크
select 상품명, 판매링크
from 굿즈, 가수
where 굿즈.가수ID = 가수.가수ID AND 이름 = 'Ariana Grande';


--2) 플레이리스트 pop의 재생목록
select 곡명, 이름, 추가날짜
from 플레이리스트, 추가, 곡, 가수
where 플레이리스트.리스트번호 = 추가.리스트번호 AND 추가.곡번호 = 곡.곡번호 AND 가수.가수ID = 곡.가수ID AND 리스트명 = 'pop'
order by 추가날짜;


--3) 회원 'yamamoto'가 팔로우한 가수는?
select 이름
from 가수, follow, 회원
where 가수.가수ID = follow.가수ID AND follow.ID = 회원.ID AND (회원.ID = 'yamamoto');


--4) 'Justice' 앨범에 관한 모든 정보(+ 곡 정보) 검색
select 앨범명, 곡명, 청취제한, 총재생횟수, 재생시간, 앨범구분, 발매일
from 곡, 앨범
where 곡.가수ID = 앨범.가수ID AND 앨범명 = 'Justice';


--5) 회원 kimsoyo가 만든 플레이리스트 목록
select 리스트명
from 플레이리스트, 회원
where 플레이리스트.ID = 회원.ID AND 회원.ID = 'kimsoyo'


--6) 가장 최근 발매된 앨범은?
select top 1 앨범명, 이름, 발매일
from 앨범, 가수
where 앨범.가수ID = 가수.가수ID AND 발매일 <= '2022/06/08' AND 이름 = '태연'
order by 발매일 Desc;


--7) 앨범 '÷(Deluxe)'의 전곡 목록
select 곡명, 재생시간, 청취제한
from 앨범, 곡
where 앨범.가수ID = 곡.가수ID AND 앨범명 = '÷(Deluxe)';


--8) Ed Sheeran의 콘서트 예정 목록
select 공연명, 공연장, 도시, 요일, 판매링크
from 가수, 출연, 공연정보
where 가수.가수ID = 출연.가수ID AND 출연.공연번호 = 공연정보.공연번호 AND 이름 = 'Ed Sheeran';


--9) 회원 'oliver'가 좋아요 표시한 앨범
select 앨범명
from 회원, 앨범_좋아요, 앨범
where 앨범_좋아요.ID = 회원.ID AND 앨범_좋아요.앨범번호 = 앨범.앨범번호 AND 회원.ID = 'oliver';


--10) 저스틴 비버의 팔로워 수는?
select COUNT(가수.가수ID) AS 팔로워
from follow, 가수
where 가수.가수ID = follow.가수ID AND (이름 = 'Justin Bieber');


--11) 회원 'abcdefg'가 많이 들은 곡(재생횟수 내림차순)
select 곡명, 이름, 재생횟수
from 곡, 가수, 재생, 회원
where 곡.곡번호 = 재생.곡번호 AND 곡.가수ID = 가수.가수ID AND 회원.ID = 재생.ID AND 회원.ID = 'abcdefg'
order by 재생횟수 Desc;


--12) 락페스티벌 'SUMMER SONIC 2022 TOKYO'의 라인업
select 이름
from 가수, 출연, 공연정보
where 가수.가수ID = 출연.가수ID AND 출연.공연번호 = 공연정보.공연번호 AND 공연명 = 'SUMMER SONIC 2022 TOKYO';


--13) 태연의 전 앨범을 최근 발매순으로 나열
select 앨범명
from 앨범, 가수
where 앨범.가수ID = 가수.가수ID AND 이름 = '태연'
order by 발매일 Desc;


--14) 회원 'kimsoyo'가 좋아요 표시한 곡
select 곡명
from 회원, 곡_좋아요, 곡
where 곡_좋아요.ID = 회원.ID AND 곡_좋아요.곡번호 = 곡.곡번호 AND 회원.ID = 'kimsoyo';


--15) 서버에 저장된 곡 중에서 랜덤으로 추출해 플레이리스트 만들기 (10곡)
select top 10 곡명, 이름, 재생시간
from 곡, 가수
where 곡.가수ID  = 가수.가수ID
order by NEWID();


--16) 회원 'leesuman'이 가장 많이 들은 곡
select top 1 재생횟수, 곡명, 이름
from 회원, 재생, 곡, 가수
where 회원.ID = 재생.ID AND 재생.곡번호 = 곡.곡번호 AND 곡.가수ID = 가수.가수ID AND 회원.ID = 'leesuman'
order by 재생횟수 desc;


--17) 회원 'jackson'이 팔로한 가수의 최신곡
select 이름, 발매일, 앨범명
from 회원, follow, 가수, 앨범
where 회원.ID = follow.ID AND follow.가수ID = 가수.가수ID AND 가수.가수ID = 앨범.가수ID AND 회원.ID = 'jackson'
order by 발매일 desc;


--18) 회원 'abcdefg'가 가장 최근 재생한 곡
select top 1 재생일자, 곡명
from 회원, 재생, 곡
where 회원.ID = 재생.ID AND 곡.곡번호 = 재생.곡번호 AND 회원.ID = 'abcdefg'
group by 재생일자, 곡명
order by 재생일자 desc;


--19) 재생횟수 Top3 나열 (세계순위)
select top 3 곡명, SUM(재생횟수) AS 재생횟수
from 곡, 가수, 재생
where 곡.가수ID  = 가수.가수ID AND 재생.곡번호 = 곡.곡번호
group by 곡명
order by 재생횟수 desc;


--20) 국가 'South Korea'의 인기 차트
select top 100 곡명, 이름, SUM(재생횟수) AS 재생횟수
from 회원, 재생, 곡, 가수
where 회원.ID = 재생.ID AND 재생.곡번호 = 곡.곡번호 AND 곡.가수ID = 가수.가수ID AND (국가 = 'South Korea')
group by 곡명, 이름
order by 재생횟수 desc;



-- View 2개 만들기
-- 21) 1테이블
create view 청취제한곡
as select *
   from 곡
   where 청취제한 = 1

select *
from 청취제한곡;


-- 22) 3테이블 조인, 19번과 같음
create view Top100
as select top 100 곡명, SUM(재생횟수) AS 재생횟수
   from 곡, 가수, 재생
   where 곡.가수ID  = 가수.가수ID AND 재생.곡번호 = 곡.곡번호
   group by 곡명
   order by 재생횟수 desc

select *
from Top100;
create database Spotify;

use Spotify;

create table ����(
	����ID char(10),
	�̸� char(30),
	������� int,
	����û���� int,
	���� char(100)
	primary key(����ID)
);

Insert Into ���� Values ('P1000', 'Justin Bieber', 2, 77441519, 'Bieber is the #1 artist on Spotify with over 75 million monthly listners!');
Insert Into ���� Values ('P1001', 'Halsey', 48, 30806081, 'New York-bred singer, songwriter, and multi-instrumentalist Halsey');
Insert Into ���� Values ('P1002', 'The 1975', NULL, 9451477, '// N O T E S O N A C O N D I T I O N A L F O R M - 2 2 M A Y // L O V E');
Insert Into ���� Values ('P1003', '�¿�', NULL, 3577135, 'Known as the "Certified Vocal Queen"');
Insert Into ���� Values ('P1004', 'Ed Sheeran', 1, 83695258, 'Ed sheeran may be the quintessential pop star of the 2010s');
Insert Into ���� Values ('P1005', 'Taylor Swift', 8, 56616710, 'Taylor Swift is that rarest of pop phenomena');
Insert Into ���� Values ('P1006', 'Harry Styles', 4, 71815839, 'Harry Styles is releasing his new single "As It Was"');
Insert Into ���� Values ('P1007', 'Ariana Grande', 15, 52743705, 'Ariana Grande is perhaps the quintessentail pop star');
Insert Into ���� Values ('P1008', 'Lady Gaga', 34, 43201910, 'Academy Award, Golden Globe & Grammy-winner Lady Gaga');
Insert Into ���� Values ('P1009', '��ź�ҳ��', 54, 34483974, 'Record-breaking South Korean boy band BTS (aka Bangtan Boys)');
Insert Into ���� Values ('P1010', 'ONE OK ROCK', NULL, 2363251, 'ONE OK ROCK is Japanese rock band formed in 2005');

select *
From ����;


create table ��������(
	������ȣ char(10),
	������ char(30),
	������ char(40),
	���� char(20),
	���� date,
	�ǸŸ�ũ char(40),
	primary key (������ȣ)
);

Insert Into �������� Values ('C2000', 'Justin Bieber', 'Kia Forum', 'Inglewood', '2022-07-04', 'https://www.ticketmaster.com/justin-bieb');
Insert Into �������� Values ('C2001', 'Justin Bieber', 'FNB Stadium', 'Soweto', '2022-10-02', 'https://www.songkick.com/concerts/401216');
Insert Into �������� Values ('C3000', 'Halsey', 'Lakewood', 'Atlanta', '2022-07-01', 'https://concerts.livenation.com/halsey-l');
Insert Into �������� Values ('C4001', 'Lady Gaga', 'Friends Arena', 'Stockholm', '2022-07-22', 'https://www.ticketmaster.com/lady-gaga-c');
Insert Into �������� Values ('C5001', 'Ed Sheeran', 'Etihad Stadium', 'Manchester', '2022-06-10', 'https://www.ticketmaster.com/ed-sheera');
Insert Into �������� Values ('C5002', 'Ed Sheeran', 'Etihad Stadium', 'Manchester', '2022-06-11', 'https://www.ticketmaster.com/ed-sheera');
Insert Into �������� Values ('C5003', 'Ed Sheeran', 'Wembley Stadium', 'London', '2022-06-12', 'https://www.ticketmaster.com/ed-sheera');
Insert Into �������� Values ('C6000', 'SUMMER SONIC 2022 TOKYO', 'ZOZO Marine Stadium', 'Chiba', '2022-08-20', 'https://eplus.jp/sf/detail/015280');

select *
From ��������;


create table �⿬(
	����ID char(10),
	������ȣ char(10),
	primary key (����ID, ������ȣ),
	foreign key (����ID) references ����(����ID),
	foreign key (������ȣ) references ��������(������ȣ)
);

Insert Into �⿬ Values ('P1000', 'C2000');
Insert Into �⿬ Values ('P1000', 'C2001');
Insert Into �⿬ Values ('P1001', 'C3000');
Insert Into �⿬ Values ('P1008', 'C4001');
Insert Into �⿬ Values ('P1004', 'C5001');
Insert Into �⿬ Values ('P1004', 'C5002');
Insert Into �⿬ Values ('P1004', 'C5003');
Insert Into �⿬ Values ('P1002', 'C6000');
Insert Into �⿬ Values ('P1010', 'C6000');

select *
From �⿬;


create table ����(
	����ID char(10),
	��ǰ��ȣ char(10),
	��ǰ�� char(20),
	��ǰ���� char(40),
	�ǸŸ�ũ char(40),
	primary key (��ǰ��ȣ),
	foreign key (����ID) references ����(����ID)
);

Insert Into ���� Values ('P1004', 'a1000', '"x"(2xLP)', 'x is the brand new album from', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into ���� Values ('P1004', 'b1000', 'Shape Of You T-Shirt', 'The Ed Sheeran ', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into ���� Values ('P1004', 'a1001', '+ Vinyl Record', 'Protection Each record is', 'https://www.merchbar.com/pop/ed-sheeran/');
Insert Into ���� Values ('P1007', 'a3000', 'positions - cd', 'release date 30 october 2020', 'https://shopuk.arianagrande.com/*/*/');
Insert Into ���� Values ('P1007', 'b3000', 'POSITIONS CREWNECK', 'screenprinted front + graphics', 'https://shopuk.arianagrande.com/*/*/POSI');
Insert Into ���� Values ('P1002', 'b4000', 'TOOTIME T-SHIRT', 'SCREENPRINTED FRONT GRAPHICS.', 'https://store.the1975.com/*/*/TOOTIME-T');

select *
From ����;


create table �ٹ� (
	�ٹ���ȣ char(10),
	�ٹ��� char(20),
	������ð� time(0),
	�߸��� date,
	�ٹ����� char(10),
	����ID char(10),
	primary key (�ٹ���ȣ),
	foreign key (����ID) references ����(����ID)
);

Insert Into �ٹ� Values('D1001', 'Justice', '00:45:31', '2021-03-19', '�ٹ�', 'P1000');
Insert Into �ٹ� Values('D1002', 'Love Me', '00:03:42', '2015-10-09', '�̱�', 'P1002');
Insert Into �ٹ� Values('D1003', 'Weekend', '00:03:53', '2021-07-06', '�̱�', 'P1003');
Insert Into �ٹ� Values('D1004', '��(Deluxe)', '00:59:33', '2017-03-13', '�ٹ�', 'P1004');
Insert Into �ٹ� Values('D1005', 'Red', '02:10:00', '2021-11-12', '�ٹ�', 'P1005');
Insert Into �ٹ� Values('D1006', 'Fine Line', '00:46:43', '2019-12-13', '�ٹ�', 'P1006');
Insert Into �ٹ� Values('D1007', 'INVU', '00:42:26', '2022-02-14', '�ٹ�', 'P1003');
Insert Into �ٹ� Values('D1008', 'Love for Sale', '00:43:55', '2021-10-01', '�ٹ�', 'P1008');

select *
From �ٹ�;


create table �� (
	���ȣ char(10),
	��� char(30),
	û������ bit,
	�����Ƚ�� int,
	����ð� time(0),
	����ID char(10), 
	�ٹ���ȣ char(10), 
	primary key (���ȣ),
	foreign key (����ID) references ����(����ID),
	foreign key (�ٹ���ȣ) references �ٹ�(�ٹ���ȣ),
);

Insert Into �� Values('S300', 'Peaches', 1, 1143169948, '00:03:18', 'P1000', 'D1001');
Insert Into �� Values('S301', 'Anyone', 0, 486426268, '00:03:10', 'P1000', 'D1001');
Insert Into �� Values('S302', 'Lonely(with benny blanco)', 1, 601475553, '00:02:29', 'P1000', 'D1001');
Insert Into �� Values('S500', 'Love me', 0, 102611384, '00:03:42','P1002','D1002');
Insert Into �� Values('S600', 'Weekend', 0, 38308307, '00:03:53', 'P1003','D1003');
Insert Into �� Values('S700', 'Shape of you', 0, 345439837, '00:03:53' ,'P1004','D1004');
Insert Into �� Values('S701', 'Supermarket Flowers', 0, 569993798, '00:03:41' ,'P1004','D1004');
Insert Into �� Values('S800', '22', 0, 60377930, '00:03:50' ,'P1005','D1005');
Insert Into �� Values('S801', 'I Almost Do', 0, 35707784, '00:04:04' ,'P1005','D1005');
Insert Into �� Values('S910', 'Canyon Moon', 0, 137471817, '00:03:09' ,'P1006','D1006');
Insert Into �� Values('S601', 'INVU', 0, 33018091, '00:03:24', 'P1003','D1007');
Insert Into �� Values('S900', 'Do I Love You', 0, 1770965, '00:04:48', 'P1008','D1008');

select *
From ��;


create table ȸ��(
	ID char(10),
	���� char(20),
	�̸��� char(30),
	������� date,
	���� char(20),
	����� char(20),
	primary key(ID)
);

Insert Into ȸ�� Values('kimsoyo', 'South Korea', 'aaaa@bu.ac.kr', '1999-09-09', '22', '�����̾�');
Insert Into ȸ�� Values('leesuman', 'South Korea', 'suman@sment.com', '2005-06-05', '17', '�����̾�');
Insert Into ȸ�� Values('abcdefg', 'United State', 'abc@gmail.com', '2000-11-23', '21', '����');
Insert Into ȸ�� Values('jackson', 'United State', 'jackson@gmail.com', '1995-01-01', '27', '�����̾�');
Insert Into ȸ�� Values('oliver', 'United Kingdom', 'o_o@gmail.com', '2006-01-30', '16', '����');
Insert Into ȸ�� Values('yamamoto', 'Japan', 'yamamoto@gmail.com', '1987-05-26', '35', '�����̾�');

select *
From ȸ��;


create table ��_���ƿ�(
	ID char(10),
	���ȣ char(10),
	primary key (ID, ���ȣ),
	foreign key (ID) references ȸ��(ID),
	foreign key (���ȣ) references ��(���ȣ)
);

Insert Into ��_���ƿ� Values ('kimsoyo', 'S600');
Insert Into ��_���ƿ� Values ('kimsoyo', 'S910');
Insert Into ��_���ƿ� Values ('abcdefg', 'S700');
Insert Into ��_���ƿ� Values ('abcdefg', 'S910');
Insert Into ��_���ƿ� Values ('abcdefg', 'S500');

select *
From ��_���ƿ�;


create table �ٹ�_���ƿ�(
	ID char(10),
	�ٹ���ȣ char(10),
	primary key (ID, �ٹ���ȣ),
	foreign key (ID) references ȸ��(ID),
	foreign key (�ٹ���ȣ) references �ٹ�(�ٹ���ȣ)
);

Insert Into �ٹ�_���ƿ� Values ('kimsoyo', 'D1004');
Insert Into �ٹ�_���ƿ� Values ('kimsoyo', 'D1006');
Insert Into �ٹ�_���ƿ� Values ('oliver', 'D1001');
Insert Into �ٹ�_���ƿ� Values ('oliver', 'D1002');
Insert Into �ٹ�_���ƿ� Values ('leesuman', 'D1005');

select *
From �ٹ�_���ƿ�;


create table �÷��̸���Ʈ(
	����Ʈ��ȣ char(10),
	����Ʈ�� char(40),
	ID char(10),
	primary key (����Ʈ��ȣ),
	foreign key (ID) references ȸ��(ID)
);

Insert Into �÷��̸���Ʈ Values('L000', 'pop', 'kimsoyo');
Insert Into �÷��̸���Ʈ Values('L001', 'kpop', 'kimsoyo');

select *
From �÷��̸���Ʈ;


create table follow(
	ID char(10),
	����ID char(10),
	primary key (ID, ����ID),
	foreign key (ID) references ȸ��(ID),
	foreign key (����ID) references ����(����ID),
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


create table �߰� (
	����Ʈ��ȣ char(10),
	���ȣ char(10),
	�߰���¥ date,
	primary key (����Ʈ��ȣ, ���ȣ),
	foreign key (����Ʈ��ȣ) references �÷��̸���Ʈ(����Ʈ��ȣ),
	foreign key (���ȣ) references ��(���ȣ)
);

Insert Into �߰� Values('L000', 'S300', '2021-04-18');
Insert Into �߰� Values('L000', 'S301', '2022-04-22');
Insert Into �߰� Values('L000', 'S302', '2022-05-11');
Insert Into �߰� Values('L000', 'S500', '2022-05-05');
Insert Into �߰� Values('L001', 'S600', '2022-05-02');
Insert Into �߰� Values('L001', 'S700', '2022-05-04');

select *
From �߰�;


create table ��� (
	ID char(10),
	���ȣ char(10),
	���Ƚ�� int,
	������� date,
	primary key (ID, ���ȣ),
	foreign key (ID) references ȸ��(ID),
	foreign key (���ȣ) references ��(���ȣ),
);

Insert Into ��� Values('kimsoyo', 'S300', 6, '2022-04-18');
Insert Into ��� Values('kimsoyo', 'S600', 32, '2022-05-20');
Insert Into ��� Values('leesuman', 'S600', 1, '2021-12-31');
Insert Into ��� Values('leesuman', 'S700', 5, '2021-12-10');
Insert Into ��� Values('abcdefg', 'S300', 3, '2022-04-20');
Insert Into ��� Values('jackson', 'S301', 11, '2022-04-20');
Insert Into ��� Values('jackson', 'S700', 6, '2022-04-21');
Insert Into ��� Values('oliver', 'S301', 20, '2022-06-08');
Insert Into ��� Values('oliver', 'S700', 10, '2020-06-15');
Insert Into ��� Values('abcdefg', 'S700', 17, '2018-10-30');

select *
From ���;



-- ����
--1) Ariana Grande�� ����� �ǸŸ�ũ
select ��ǰ��, �ǸŸ�ũ
from ����, ����
where ����.����ID = ����.����ID AND �̸� = 'Ariana Grande';


--2) �÷��̸���Ʈ pop�� ������
select ���, �̸�, �߰���¥
from �÷��̸���Ʈ, �߰�, ��, ����
where �÷��̸���Ʈ.����Ʈ��ȣ = �߰�.����Ʈ��ȣ AND �߰�.���ȣ = ��.���ȣ AND ����.����ID = ��.����ID AND ����Ʈ�� = 'pop'
order by �߰���¥;


--3) ȸ�� 'yamamoto'�� �ȷο��� ������?
select �̸�
from ����, follow, ȸ��
where ����.����ID = follow.����ID AND follow.ID = ȸ��.ID AND (ȸ��.ID = 'yamamoto');


--4) 'Justice' �ٹ��� ���� ��� ����(+ �� ����) �˻�
select �ٹ���, ���, û������, �����Ƚ��, ����ð�, �ٹ�����, �߸���
from ��, �ٹ�
where ��.����ID = �ٹ�.����ID AND �ٹ��� = 'Justice';


--5) ȸ�� kimsoyo�� ���� �÷��̸���Ʈ ���
select ����Ʈ��
from �÷��̸���Ʈ, ȸ��
where �÷��̸���Ʈ.ID = ȸ��.ID AND ȸ��.ID = 'kimsoyo'


--6) ���� �ֱ� �߸ŵ� �ٹ���?
select top 1 �ٹ���, �̸�, �߸���
from �ٹ�, ����
where �ٹ�.����ID = ����.����ID AND �߸��� <= '2022/06/08' AND �̸� = '�¿�'
order by �߸��� Desc;


--7) �ٹ� '��(Deluxe)'�� ���� ���
select ���, ����ð�, û������
from �ٹ�, ��
where �ٹ�.����ID = ��.����ID AND �ٹ��� = '��(Deluxe)';


--8) Ed Sheeran�� �ܼ�Ʈ ���� ���
select ������, ������, ����, ����, �ǸŸ�ũ
from ����, �⿬, ��������
where ����.����ID = �⿬.����ID AND �⿬.������ȣ = ��������.������ȣ AND �̸� = 'Ed Sheeran';


--9) ȸ�� 'oliver'�� ���ƿ� ǥ���� �ٹ�
select �ٹ���
from ȸ��, �ٹ�_���ƿ�, �ٹ�
where �ٹ�_���ƿ�.ID = ȸ��.ID AND �ٹ�_���ƿ�.�ٹ���ȣ = �ٹ�.�ٹ���ȣ AND ȸ��.ID = 'oliver';


--10) ����ƾ ����� �ȷο� ����?
select COUNT(����.����ID) AS �ȷο�
from follow, ����
where ����.����ID = follow.����ID AND (�̸� = 'Justin Bieber');


--11) ȸ�� 'abcdefg'�� ���� ���� ��(���Ƚ�� ��������)
select ���, �̸�, ���Ƚ��
from ��, ����, ���, ȸ��
where ��.���ȣ = ���.���ȣ AND ��.����ID = ����.����ID AND ȸ��.ID = ���.ID AND ȸ��.ID = 'abcdefg'
order by ���Ƚ�� Desc;


--12) ���佺Ƽ�� 'SUMMER SONIC 2022 TOKYO'�� ���ξ�
select �̸�
from ����, �⿬, ��������
where ����.����ID = �⿬.����ID AND �⿬.������ȣ = ��������.������ȣ AND ������ = 'SUMMER SONIC 2022 TOKYO';


--13) �¿��� �� �ٹ��� �ֱ� �߸ż����� ����
select �ٹ���
from �ٹ�, ����
where �ٹ�.����ID = ����.����ID AND �̸� = '�¿�'
order by �߸��� Desc;


--14) ȸ�� 'kimsoyo'�� ���ƿ� ǥ���� ��
select ���
from ȸ��, ��_���ƿ�, ��
where ��_���ƿ�.ID = ȸ��.ID AND ��_���ƿ�.���ȣ = ��.���ȣ AND ȸ��.ID = 'kimsoyo';


--15) ������ ����� �� �߿��� �������� ������ �÷��̸���Ʈ ����� (10��)
select top 10 ���, �̸�, ����ð�
from ��, ����
where ��.����ID  = ����.����ID
order by NEWID();


--16) ȸ�� 'leesuman'�� ���� ���� ���� ��
select top 1 ���Ƚ��, ���, �̸�
from ȸ��, ���, ��, ����
where ȸ��.ID = ���.ID AND ���.���ȣ = ��.���ȣ AND ��.����ID = ����.����ID AND ȸ��.ID = 'leesuman'
order by ���Ƚ�� desc;


--17) ȸ�� 'jackson'�� �ȷ��� ������ �ֽŰ�
select �̸�, �߸���, �ٹ���
from ȸ��, follow, ����, �ٹ�
where ȸ��.ID = follow.ID AND follow.����ID = ����.����ID AND ����.����ID = �ٹ�.����ID AND ȸ��.ID = 'jackson'
order by �߸��� desc;


--18) ȸ�� 'abcdefg'�� ���� �ֱ� ����� ��
select top 1 �������, ���
from ȸ��, ���, ��
where ȸ��.ID = ���.ID AND ��.���ȣ = ���.���ȣ AND ȸ��.ID = 'abcdefg'
group by �������, ���
order by ������� desc;


--19) ���Ƚ�� Top3 ���� (�������)
select top 3 ���, SUM(���Ƚ��) AS ���Ƚ��
from ��, ����, ���
where ��.����ID  = ����.����ID AND ���.���ȣ = ��.���ȣ
group by ���
order by ���Ƚ�� desc;


--20) ���� 'South Korea'�� �α� ��Ʈ
select top 100 ���, �̸�, SUM(���Ƚ��) AS ���Ƚ��
from ȸ��, ���, ��, ����
where ȸ��.ID = ���.ID AND ���.���ȣ = ��.���ȣ AND ��.����ID = ����.����ID AND (���� = 'South Korea')
group by ���, �̸�
order by ���Ƚ�� desc;



-- View 2�� �����
-- 21) 1���̺�
create view û�����Ѱ�
as select *
   from ��
   where û������ = 1

select *
from û�����Ѱ�;


-- 22) 3���̺� ����, 19���� ����
create view Top100
as select top 100 ���, SUM(���Ƚ��) AS ���Ƚ��
   from ��, ����, ���
   where ��.����ID  = ����.����ID AND ���.���ȣ = ��.���ȣ
   group by ���
   order by ���Ƚ�� desc

select *
from Top100;
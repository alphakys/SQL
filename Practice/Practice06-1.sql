-- 테이블 삭제
drop table book;
drop table author;

--author만 모으기

drop sequence seq_author_id;
delete from author;
create sequence seq_author_id
increment by 1
start with 1;

--book만 모으기
delete from book;
drop sequence seq_book_id;
create sequence seq_book_id
increment by 1
start with 1;

--테이블 값만 삭제
delete from book;
delete from author;

-- 테이블 모두 불러오기
select *
from book;

select *
from author;

-- 시퀀스 생성
create sequence seq_book_id
increment by 1
start with 1;

create sequence seq_author_id
increment by 1
start with 1;

--시퀀스 삭제
drop sequence seq_book_id;
drop sequence seq_author_id;

-- 테이블 생성
create table book          (
            book_id     number(10),
            title       varchar2(100)   not null,
            pubs        varchar2(100),
            pub_date    varchar2(100),
            author_id   number(10),
            
            primary     key(book_id),
            
            constraint  author_id   foreign key(author_id)
            references  author(author_id)    
            );
            
create table author(
        author_id       number(10),
        author_name     varchar2(100)       not null,
        author_desc     varchar2(500),
        primary         key(author_id)  
           );
            
-- 테이블 author 값 insert      
insert into author
values(seq_author_id.nextval, '이문열', '경북 영양' );

insert into author
values(seq_author_id.nextval,'박경리', '경상남도 통영' );

insert into author
values(seq_author_id.nextval,'유시민', '17대 국회의원' );

insert into author
values(seq_author_id.nextval,'기안 84', '기안동에서 산 84년생' );

insert into author
values(seq_author_id.nextval,'강풀', '온라인 만화가 1세대' );

insert into author
values(seq_author_id.nextval,'김영하', '알쓸신잡' );

-- 테이블 book 값 insert 
insert into book
values(seq_book_id.nextval,'우리들의 일그러진 영웅', '다림', '1998-02-22','1');

insert into book
values(seq_book_id.nextval,'삼국지', '민음사', '2002-03-01','1');

insert into book
values(seq_book_id.nextval,'토지', '마로니에북스', '2012-08-15','2');

insert into book
values(seq_book_id.nextval,'유시민의 글쓰기 특강', '생각의 길', '2015-04-01','3');

insert into book
values(seq_book_id.nextval,'패션왕', '중앙북스(books)', '2012-02-22','4');

insert into book
values(seq_book_id.nextval,'순정만화', '재미주의', '2011-08-03','5');

insert into book
values(seq_book_id.nextval,'오직두사람', '문학동네', '2017-05-04','6');

insert into book
values(seq_book_id.nextval,'26년', '재미주의', '2012-02-04','5');

--업데이트
update author
set author_desc = '서울특별시'
where author_id = '5';

update book
set    author_id = null
where book_id = 5;

--삭제
delete from author
where author_id = 4;

delete from author
where author_id = 7;


select seq_author_id.currval from dual;
select seq_book_id.currval from dual;



select seq_book_id2.currval from dual;


select author_id,
       author_name,
       author_desc
from author
order by author_id asc;

delete from author
where author_id = 3;

select book_id,
        title,
        pubs,
        pub_date,
        b.author_id,
        a.author_name,
        a.author_desc
from book b left outer join author a
on   b.author_id = a.author_id
where title like '%국%' or pubs like '%국%' or author_name like '%국%'
      or author_desc like '%국%';

update author
set    author_name = '이문열'
where author_id = 1;

select *
from author;

select *
from book;

select title,
        pubs,
        author_name,
        author_desc
from    (select book_id,
        title,
        pubs,
        pub_date,
        b.author_id,
        a.author_name,
        a.author_desc
        from book b, author a
        where b.author_id = a.author_id)
where title like '%국%' or pubs like '%국%' or author_name like '%국%'
      or author_desc like '%국%';
        

select book_id,
        title,
        pubs,
        pub_date,
        b.author_id,
        a.author_name,
        a.author_desc
        from book b, author a
        where b.author_id = a.author_id and title like '%국%' or pubs like '%국%' or author_name like '%국%'
      or author_desc like '%국%';















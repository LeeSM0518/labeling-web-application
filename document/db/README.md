# 1차 DB 설계

## 데이터 정리

* **종이 사이즈**
* **라벨 스타일**
  * **스타일**
* **라벨 배경색**
* **라벨 Bar 두께**
* **라벨 Bar 색**
* **라벨 테두리 두께**
* **라벨 테두리 색**
* **머리글**
  * 폰트
  * 글씨 크기
  * 글씨 색깔
* **중간글**
  * 폰트
  * 글씨 크기
  * 글씨 색깔
* **꼬리글**
  * 폰트
  * 글씨 크기
  * 글씨 색깔

<br>

## 요구사항 정리

* **종이 사이즈**
  * 사이즈(A4, A3, ...)는 유일하며 반드시 가진다.
    * A3, A4, A5, 기타 사이즈
  * 가로 크기를 반드시 가진다(서비스 측에서 5mm 빼줘야함).
    * A3(420mm), A4(297mm), A5(210mm), 기타 사이즈(130mm)
  * 세로 크기를 반드시 가진다(서비스 측에서 5mm 빼줘야함).
    * A3(297mm), A4(210mm), A5(148mm), 기타 사이즈(75mm)
* **라벨 스타일**
  * 식별자를 가진다.
  * 스타일 이름은 유일하며 반드시 가진다.
    * text1, text1-border, text2, tex2-bar, text2-border
  * 스타일을 반드시 가진다.
    * text1: 중앙글
    * text1-border: 중앙글, 테두리
    * text2: 머리글, 꼬리글
    * text2-bar: 머리글, 꼬리글, Bar
    * text2-border: 머리글, 꼬리글, Bar, 테두리
* **스타일**
  * 식별자를 가진다.
  * 이름을 가진다.
    * 중앙글, 머리글, 꼬리글, 테두리, Bar

* **색깔**
  * 색깔 이름을 가진다.
    * 빨강, 초록, 파랑, 검정, 흰색
  * 색깔 코드를 가진다.
    * #f00, #0f0, #00f, #000, #fff
* **두께**
  * 두께를 가진다.
    * 1mm, 2mm, 3mm, ...
* **폰트**
  * 폰트 이름을 가진다.
* **글씨 크기**
  * 1cm, 2cm, ...

<br>

## ER 모델

![image](https://user-images.githubusercontent.com/43431081/73864136-78ee7d80-4884-11ea-9a2b-d7ee96b6482f.png)

<br>

## ER 다이어그램

![image](https://user-images.githubusercontent.com/43431081/73864979-e0f19380-4885-11ea-85cb-55930f419fe2.png)

<br>

## SQL

### CREATE

* **PAPER**

  ```sql
  create table PAPER (
    size varchar(20) primary key,
    width varchar(10),
    height varchar(10)
  );
  ```

* **COLOR**

  ```sql
  create table COLOR (
    name varchar(20) primary key,
    code varchar(7)
  );
  ```

* **FONT_SIZE**

  ```sql
  create table FONT_SIZE (
    size varchar(5) primary key
  );
  ```

* **WEIGHT**

  ```sql
  create table WEIGHT (
    size varchar(5) primary key
  );
  ```

* **FONT**

  ```sql
  create table FONT (
    name varchar(20) primary key
  );
  ```

* **LABEL**

  ```sql
  create table LABEL (
    id serial primary key,
    style_name varchar(20)
  );
  ```

* **STYLE**

  ```sql
  create table STYLE (
    id serial primary key,
    kind varchar(20)
  );
  ```

* **LABEL_STYLE**

  ```sql
  create table LABEL_STYLE (
    label_id integer,
    style_id integer,
    foreign key (label_id) references LABEL(id),
    foreign key (style_id) references STYLE(id)
  );
  ```


<br>

### INSERT

* **PAPER**

  ```sql
  insert into PAPER values
  ('A3', '420mm', '297mm'),
  ('A4', '297mm', '210mm'),
  ('A5', '210mm', '148mm'),
  ('another', '130mm', '75mm');
  ```

* **COLOR**

  ```sql
  insert into COLOR values
  ('빨간색', '#FF0000'),
  ('주황색', '#FF5E00'),
  ('노란색', '#FFE400'),
  ('초록색', '#1FDA11'),
  ('파란색', '#0900FF'),
  ('하늘색', '#00D8FF'),
  ('보라색', '#6600FF'),
  ('분홍색', '#FF00DD'),
  ('검정색', '#000000'),
  ('흰색', '#FFFFFF');
  ```

* **FONT_SIZE**

  ```sql
  insert into FONT_SIZE values
  ('1cm'), ('2cm'), ('3cm'), ('4cm'), ('5cm'), ('6cm'), ('7cm'), ('8cm'), ('9cm'), ('10cm'), ('11cm'), ('12cm'), ('13cm'), ('14cm'), ('15cm'), ('16cm'), ('17cm'), ('18cm'), ('19cm'), ('20cm');
  ```

* **WEIGHT**

  ```sql
  insert into WEIGHT values
  ('1mm'), ('2mm'), ('3mm'), ('4mm'), ('5mm'), ('6mm'), ('7mm'), ('8mm'), ('9mm'), ('10mm'), ('11mm'), ('12mm'), ('13mm'), ('14mm'), ('15mm'), ('16mm'), ('17mm'), ('18mm'), ('19mm'), ('20mm');
  ```

* **FONT**

  ```sql
  insert into FONT values
  ('Black Han Sans'),
  ('Do Hyeon'),
  ('Gothic A1'),
  ('Jua'),
  ('Nanum Brush Script'),
  ('Nanum Gothic'),
  ('Nanum Gothic Coding'),
  ('Nanum Myeongjo'),
  ('Nanum Pen Script'),
  ('Noto Sans KR'),
  ('Noto Serif KR'),
  ('Sunflower');
  ```

* **LABEL**

  ```sql
  insert into LABEL values
  (DEFAULT, 'text1'),
  (DEFAULT, 'text1-border'),
  (DEFAULT, 'text2'),
  (DEFAULT, 'text2-bar'),
  (DEFAULT, 'text2-border'),
  ```

* **STYLE**

  ```sql
  insert into STYLE values
  (DEFAULT, 'header'),
  (DEFAULT, 'content'),
  (DEFAULT, 'tail'),
  (DEFAULT, 'bar'),
  (DEFAULT, 'border');
  ```

* **LABEL_STYLE**

  ```sql
  insert into LABEL_STYLE values
  (1, 2),
  (2, 2),
  (2, 5),
  (3, 1),
  (3, 3),
  (4, 1),
  (4, 3),
  (4, 4),
  (5, 1),
  (5, 3),
  (5, 4),
  (5, 5);
  ```
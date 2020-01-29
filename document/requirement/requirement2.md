# 2차 요구 사항 설계

## 라벨링 예시

### A3 : 297mm x 420mm

#### 텍스트1

<img src="../capture/라벨1.png">

* 중앙글만 존재
* 테두리 없음

<br>

<img src="../capture/라벨2.png">

* 중앙글만 존재
* 테두리 있음

<br>

#### 텍스트2

<img src="../capture/라벨3.png">

* 머리글, 꼬리글 존재
* 테두리 없음
* 중앙 Bar 존재 (두께, 색상 변환 옵션 추가)

<br>

<img src="../capture/라벨4.png">

* 머리글, 꼬리글 존재
* 테두리 있음
* 중앙 Bar 존재 (두께, 색상 변환 옵션 추가)

<br>

### A4: 210mm x 297mm

#### 텍스트1

<img src="../capture/라벨5.png">

* 중앙글만 있음
* 테두리 있음

<br>

<img src="../capture/라벨7.png">

* 중앙글만 있음
* 테두리 없음

<br>

#### 텍스트2

<img src="../capture/라벨9.png">

* 머리글, 꼬리글
* 중앙 Bar 존재
* 테두리 없음

<br>

<img src="../capture/라벨10.png">

* 머리글, 꼬리글
* 중앙 Bar
* 테두리 있음

<br>

### A5: 148mm x 210mm

#### 텍스트2

<img src="../capture/라벨11.png">

* 머리글, 꼬리글
* 테두리 및 중앙 Bar 존재

<br>

### 기타 사이즈: 75mm x 130mm

#### 텍스트2

<img src="../capture/라벨14.png">

* 머리글, 꼬리글
* 테두리 & 중앙 Bar 없음

<br>

<img src="../capture/라벨13.png">

* 머리글, 꼬리글
* 중앙 Bar 있음

<br>

<img src="../capture/라벨12.png">

* 머리글, 꼬리글
* 테두리 & 중앙 Bar

<br>

## 라벨링 정리

1. **종이** 
   * A3
   * A4
   * A5
   * 기타
2. **라벨 스타일**
   * text1
   * text1-border
   * text2
   * text2-bar
   * text2-border
3. **라벨이 갖는 요소**
   * text1: 중앙글
   * text1-border: 중앙글, 테두리
   * text2: 머리글, 꼬리글
   * text2-bar: 머리글, 꼬리글, Bar
   * text2-border: 머리글, 꼬리글, Bar, 테두리

<br>

## 라벨링 순서

1. 종이 사이즈 선택
2. 라벨 스타일 선택
3. 라벨 꾸미기
4. 프린터 하기
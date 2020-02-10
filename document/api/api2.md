# 2차 API 설계

## 종이 크기 및 라벨 스타일 선택 페이지 (/init)

* **URL** : /init

  * 종이 사이즈
  * 라벨 스타일

* **POST**

  * 종이 사이즈, 라벨 스타일을 session에 저장
    * Paper
    * List\<Style>

* **DAO**

  * PaperDao

    * PAPER의 모든 요소들을 가져온다.

      **SQL**

      ```sql
      select *
      from PAPER
      ```

      * parameterType = None
      * resultMap = paperResultMap

      **JAVA**

      ```java
      List<Paper> selectList();
      ```

    * PAPER의 한 요소를 찾아서 꺼내온다.

      **SQL**

      ```sql
      select *
      from PAPER
      where size=#{size}
      ```

      * parameterType = Paper
      * resultMap = paperResultMap

      **JAVA**

      ```java
      Paper selectOne(Paper paper);
      ```

  * LabelDao

    * LABEL의 모든 요소들을 가져온다.

      **SQL**

      ```sql
      select *
      from LABEL
      ```

      * parameterType = None
      * resultMap = LabelResultMap

      **JAVA**

      ```java
      List<Label> selectList();
      ```

  * StyleDao

    * 선택된 라벨의 이름을 통해 스타일들을 가져온다.

      **SQL**

      ```sql
      select s.id, s.kind
      from LABEL l, STYLE s, LABEL_STYLE ls
      where l.id = ls.label_id and
      s.id = ls.style_id and
      l.style_name = #{styleName}
      ```

      * parameterType = Label
      * resultMap = styleResultMap

      **JAVA**

      ```java
      List<Style> selectStylesFromLabel(Label label);
      ```

<br>

## 라벨지 꾸미는 페이지 (/decorate)

* **URL** : /decorate

  * 라벨 배경색
  * 가운데 Bar 두께
  * 가운데 Bar 색
  * 라벨 테두리 두께
  * 라벨 테두리 색
  * 폰트
  * 머리글, 중간글, 꼬리글
  * 글씨 크기
  * 글씨 색깔

* **GET**

  * 종이 사이즈, 라벨 스타일을 session에서 제거

* **POST**

  * 라벨 배경색
  * 가운데 Bar 두께
  * 가운데 Bar 색
  * 라벨 테두리 두께
  * 라벨 테두리 색
  * 폰트
  * 머리글, 중간글, 꼬리글
  * 글씨 크기
  * 글씨 색깔

  > 위의 옵션들을 session에 저장

* **DAO**

  * ColorDao

    * COLOR의 모든 요소들을 가져온다.

      **SQL**

      ```sql
      select *
      from COLOR;
      ```

      * ParameterType = None
      * resultMap = colorResultMap

      **JAVA**

      ```java
      List<Color> selectList();
      ```

  * WeightDao

    * WEIGHT의 모든 요소를 가져온다.

      **SQL**

      ```sql
      select *
      from WEIGHT;
      ```

      * parameterType = None
      * resultMap = weightResultMap

      **JAVA**

      ```java
      List<Weight> selectList();
      ```

  * FontSizeDao

    * FONT_SIZE의 모든 요소를 가져온다.

      **SQL**

      ```sql
      selcet *
      from FONT_SIZE;
      ```

      * parameterType = None
      * resultMap = fontSizeResultMap

      **JAVA**

      ```java
      List<FontSize> selectList();
      ```

  * FontDao

    * FONT의 모든 요소를 가져온다.

      **SQL**

      ```sql
      selcet *
      from FONT;
      ```

      * parameterType = None
      * resultMap = fontResultMap

      **JAVA**

      ```java
      List<Font> selectList();
      ```

<br>

## 라벨지 프린터 (/print)

* **URL** : /print
# 1차 요구 사항 설계

## 하위 도메인

* **Label**
  * **Type**
    * PaperSize
    * Layout
    * Arrangement
  * **Background**
    * Color
    * BorderSize
    * BorderColor
  * **Header**
    * **TextPart**
      * text
      * Color
      * Font
      * Size
  * **Content**
    * **TextPart**
      * text
      * Color
      * Font
      * size
  * **Tail**
    * **TextPart**
      * text
      * Color
      * Font
      * Size

<br>

## Label

Label(라벨)은 라벨지 제작을 위한 양식이다.

| 번호 | 요구사항                         | 상세내용                                                     |
| ---- | -------------------------------- | ------------------------------------------------------------ |
| 1    | 라벨지 형식으로 변환이 가능하다. | 상품명, 가격, 폰트, 종이 사이즈, 라벨 타입 등을 고를 수 있다. |

<br>

| 속성       | 설명                             | 세부 요구사항          |
| ---------- | -------------------------------- | ---------------------- |
| Type       | 종이 크기, 라벨링 타입           | Type Class 구현        |
| Background | 배경색, 테두리 크기, 테두리 색깔 | Background 클래스 구현 |
| Header     | 텍스트, 글자색, 폰트, 글자크기   | TextPart 클래스 구현   |
| Content    | "                                | "                      |
| Tail       | "                                | "                      |

<br>

### Type

Type(타입)은 종이의 크기(A4, A3)나 라벨링 타입(3 X 3, 4 X 4)을 설정한다.

| 속성        | 설명                                         | 세부 요구사항 |
| ----------- | -------------------------------------------- | ------------- |
| PaperSize   | 종이의 크기 설정(A4, A3)                     | Enum 구현     |
| Layout      | 종이의 가로, 세로 결정(Horizontal, Vertical) | Enum 구현     |
| Arrangement | 라벨 배열 결정 (3 X 3, 4 X 2)                | Enum 구현     |

<br>

### Background

Background(배경)은 라벨링의 배경(배경색, 테두리 두께, 테두리 색)을 설정한다.

| 속성        | 설명        | 세부 요구사항 |
| ----------- | ----------- | ------------- |
| Color       | 배경색 설정 | Enum 구현     |
| BorderSize  | 테두리 크기 | Enum 구현     |
| BorderColor | 테두리 색깔 | Enum 구현     |

<br>

### Header, Content, Tail

Header, Content, Tail(머리, 내용, 꼬리)은 라벨링의 텍스트 부분으로 윗부분, 중간부분, 아래부분으로 나눠서 텍스트를 설정한다.

* **TextPart**

| 속성  | 설명         | 세부 요구사항 |
| ----- | ------------ | ------------- |
| text  | 텍스트(내용) | String        |
| Color | 글씨 색깔    | Enum 구현     |
| Font  | 폰트         | Enum 구현     |
| Size  | 글씨 크기    | Enum 구현     |
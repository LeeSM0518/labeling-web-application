# text1

<div id="background" style="width: 292mm; height: 205mm; background-color: #ff0000;">
  <div id="content" style="font-size: 8cm; font-family: Do Hyeon; color: rgb(255, 228, 0); height: 100%; display: flex; justify-content: center; align-items: center;">
    S A L E
  </div>
</div>


* \<div style="width: ?; height: ?; background-color: ?;">
  * width: 292mm => Paper.width
  * height: 205mm => Paper.height
  * background-color: #ff0000 => Color.code
* \<div style="font-size: ?; font-family: ?; color: ?; height: 100%; display: flex; justify-content: center; align-items: center;"> S A L E
  * font-size: 8cm => FontSize.size
  * font-familly: Do Hyeon => Font.name
  * color: #~ => Color.code
  * contentText: S A L E => String
* **데이터 정리**
  * **session**
    * width
    * height
    * labelBackgroundColor
    * contentFontSize
    * contentFontName
    * contentFontColor
    * contentText

<br>

# text2

<div id="background" style="width: 292mm; height: 205mm; background-color: #ff0;">
  <div style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;"> 머리글
  </div>
      <div style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;"> 꼬리글
  </div>
</div>



* \<div id="background" style="width: 292mm; height: 205mm; background-color: #fff;">
  * width: 292mm => Paper.width
  * height: 205mm => Paper.height
  * background-color: #fff => Color.code
* \<div style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;"> 머리글
  * font-size: ~cm => FontSize.size
  * font-family: Do Hyeon => Font.name
  * color: #~ => Color.code
  * headerText: 머리글 => String
* \<div style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;"> 꼬리글
  * font-size: ~cm => FontSize.size
  * font-family: Do Hyeon => Font.name
  * color: #~ => Color.code
  * headerText: 머리글 => String
* **데이터 정리**
  * **session**
    * width
    * height
    * labelBackgroundColor
    * headerFontSize
    * headerFontName
    * headerFontColor
    * headerText
    * tailFontSize
    * tailFontName
    * tailFontColor
    * tailText

<br>

# text1-border

<div id="background" style="width: 292mm; height: 205mm; background-color: #ff0;">
  <div style="padding: 5mm; height: 100%;">
    <div style="font-size: 300%; font-family: normal; color: initial; height: 100%; border: 2mm solid #000; display: flex; justify-content: center; align-items: center;"> S A L E
    </div>
  </div>
</div>


* \<div id="background" style="width: 292mm; height: 205mm; background-color: #ff0;">
  * width: ~ => Paper.width
  * height: ~ => Paper.height
  * background-color: #fff => Color.code
* \<div style="padding: 5mm; height: 100%;">
* \<div style="font-size: 300%; font-family: normal; color: initial; height: 100%; border: 2mm solid #000; display: flex; justify-content: center; align-items: center;"> S A L E
  * font-size: ~cm => FontSize.size
  * font-family: Do Hyoen => Font.name
  * borderWeight: 2mm => String
  * borderColor: #~ => String
  * color: #~ => Color.code
  * contentText: SALE => String
* **데이터 정리**
  * **session**
    * width
    * height
    * labelBackgroundColor
    * borderWeight
    * borderColor
    * contentFontSize
    * contentFontName
    * contentFontColor
    * contentText

<br>

# text2-bar

<div id="background" style="width: 292mm; height: 205mm; background-color: rgb(255, 228, 0);">
  <div style="font-size: 8cm; font-family: Nanum Gothic; color: rgb(255, 0, 0); height: 50%; display: flex; justify-content: center; align-items: center;">
    S A L E
  </div>
  <div style="height: 4mm; width: 100%; background-color: rgb(255, 94, 0);"></div>
  <div style="font-size: 6cm; font-family: Nanum Gothic; color: rgb(255, 0, 0); height: 50%; display: flex; justify-content: center; align-items: center;">
    세일
  </div>
</div>


* \<div id="background" style="width: 292mm; height: 205mm; background-color: rgb(255, 228, 0);">
  * width: ~ => Paper.width
  * height: ~ => Paper.height
  * background-color: ~ => Color.code
* \<div style="font-size: 8cm; font-family: Nanum Gothic; color: rgb(255, 0, 0); height: 50%; display: flex; justify-content: center; align-items: center;"> S A L E
  * font-size: 8cm => FontSize.size
  * font-family: Do Hyoen => Font.name
  * color: #~ => Color.code
  * value: ~ => String
* \<div style="height: 4mm; width: 100%; background-color: rgb(255, 94, 0);"></div>
  * height: 4mm => Weight.size
  * background-color => Color.code
* \<div style="font-size: 6cm; font-family: Nanum Gothic; color: rgb(255, 0, 0); height: 50%; display: flex; justify-content: center; align-items: center;"> 세일
  * font-size: 6cm => FontSize.size
  * font-family: Nanum Gothic => Font.name
  * color: #~ => Color.code
  * value: ~ => String

* **데이터 정리**
  * **session**
    * width
    * height
    * labelBackgroundColor
    * headerFontSize
    * headerFontName
    * headerFontColor
    * barSize
    * barColor
    * tailFontSize
    * tailFontName
    * tailFontColor

<br>

# text2-border

<div class="card-body">
  <div id="labelExample" style="width: 292mm; height: 205mm; background-color: #fff;">
    <div style="padding: 5mm; height: 100%;">
      <div id="contentTextId" style="height: 100%; border: 2mm solid #000; width: 100%;">
        <div id="headerTextId" class="header-text" style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
          머리글을 입력해주세요.
        </div>
        <div id="label-bar" style="height: 1mm; width: 100%; background-color: black; display: flex; justify-content: center; align-items: center;"></div>
        <div id="tailTextId" class="tail-text" style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
          꼬리글을 입력해주세요.
        </div>
      </div>
    </div>
  </div>
</div>

* \<div id="labelExample" style="width: 292mm; height: 205mm; background-color: #fff;">
	* width: ~ => Paper.width
	* height: ~ => Paper.height
	* background-color: ~ => Color.code
* \<div style="padding: 5mm; height: 100%;">
* \<div id="contentTextId" style="height: 100%; border: 2mm solid #000; width: 100%;">
	* borderWeight: 2mm => String
	* borderColor: #~ => Color.code
* \<div id="headerTextId" class="header-text" style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;">
	* font-size: ~ => FontSize.size
	* font-family: ~ => Font.name
	* color: ~ => Color.code
  * value: ~ => String
* \<div id="label-bar" style="height: 1mm; width: 100%; background-color: black; display: flex; justify-content: center; align-items: center;">
	* height: 1mm => Weight.size
	* background-color: black => Color.code
* \<div id="tailTextId" class="tail-text" style="font-size: 300%; font-family: normal; color: initial; height: 50%; display: flex; justify-content: center; align-items: center;"> 꼬리글
	* font-size: ~ => FontSize.size
	* font-family: ~ => Font.name
	* color: ~ => Color.code
  * value: ~ => String
* **데이터 정리**
  * **session**
    * width
    * height
    * labelBackgroundColor
    * borderWeight
    * borderColor
    * headerFontSize
    * headerFontName
    * headerFontColor
    * barSize
    * barColor
    * tailFontSize
    * tailFontName
    * tailFontColor
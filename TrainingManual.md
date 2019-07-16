180717 フィールド専門実習(田島担当分)  
======================================  
  
## ImageJをダウンロード  
以下のサイトにアクセスして後は指示に従う．  
https://imagej.net/Welcome
https://imagej.nih.gov/ij/download.html  
  
## Rをダウンロード  
以下のサイトにアクセスして後は指示に従う．  
Rは解説しない．  
https://cran.r-project.org


## 出液データの入力  
以下にアクセスしてデータを埋める．  
https://docs.google.com/spreadsheets/d/14GEPTmZXwB7rckhpODGsmPLzzOb320K39Ju0r_gkyY4/edit?usp=sharing


## 画像解析演習  
  
### 被度を測定する  
1. RGB分解をする．  Image>Color>Split channels  
1. greenの画像を選択．  
1. 二値化する．  Image>Adjust>Threshold  
1. 反転する．  Edit>Invert  
1. 測定する(100pixel以上)．  Analyze>Analyze Particle  
1. 算出する．合計 / 画像サイズ x 100が被度  
  
### 葉面積を測定する  
1. グレースケール画像にする．  Image>Type>split channels  
1. 二値化する．  Image>Adjust>Threshold  
1. 測定する(100pixel以上)．  Analyze>Analyze Particle  
1. 150dpiの画像なのでそれに基づいて算出する．値 / 150 / 150 x 2.54 x 2.54  
  
### 根長を測定する  
1. 二値化する．  Image>Adjust>Threshold  
1. ゴミを取り除く．  Process>Binary>Erode  
1. 骨格抽出する．  Process>Binary>Skeletonize  
1. 測定する(2pixel以上)．  Analyze>Analyze Particle  
1. 根長に換算する．値 x 1.1 / 400 x 2.54  
  
### マクロで解析する  
一画像ずつ上記のようなことをやるのは手間  
マクロで自動化できる  
  
## データを解析してみる  
データを適当なディレクトリに保存して解析する  
  
  

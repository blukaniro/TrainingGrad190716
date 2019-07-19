# 190719田島亮介
# データの読み込みと整理
d<-read.table("dataset.txt", header=T)
d2<-d[c(-4,-11),] #出液とSFWが著しく大きい値のものを外れ値として除外


# 分散分析
summary(aov(sap~treatment,d2))
summary(aov(SFW~treatment,d2))
summary(aov(panicle~treatment,d2))
summary(aov(root~treatment,d2))
## 新鮮重: 10%水準で，慣行>有機，節根数：5%水準で慣行>有機
## これらを栽培方法との関係から考察．あるいは有意差なしの考察(をしないと出液速度に触れられない？)


# 相関のチェック
plot(d2[,2:5])
cor(d2[,2:5])
## 新鮮重，茎数，節根数の相関高い
## これらの考察


# データから指標算出
root_per_panicle<-d2$root/d2$panicle #茎数あたりの節根数
sap_per_panicle<-d2$sap/d2$panicle #茎数あたりの出液速度
sap_per_root<-d2$sap/d2$root #根数あたりの出液速度
d2<-data.frame(d2,rp=root_per_panicle, sp=sap_per_panicle, sr=sap_per_root) #データ追加


# 分散分析
summary(aov(rp~treatment,d2))
summary(aov(sp~treatment,d2))
summary(aov(sr~treatment,d2))
## 茎数あたりの節根数: 5%水準で慣行>有機
## 茎数あたりの出液速度: 5%水準で慣行<有機
## 根数あたりの出液速度: 1%水準で慣行<有機
## この関係を栽培方法との関係から考察


# 図表は箱ひげ図，棒グラフ，相関図等がわかりやすく表記され適切に言及されている
par(mfrow=c(2,4))
boxplot(sap~treatment,d2)
boxplot(SFW~treatment,d2)
boxplot(panicle~treatment,d2)
boxplot(root~treatment,d2)
boxplot(rp~treatment,d2)
boxplot(sp~treatment,d2)
boxplot(sr~treatment,d2)

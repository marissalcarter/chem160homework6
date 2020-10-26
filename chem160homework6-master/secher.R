secher<-read.table("secher.txt", header=T)
model<-lm(bwt~bpd, data=secher)
png(filename="bwt_bpd.png")
plot(bwt~bpd, data=secher)
abline(model)
dev.off()
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("R2 = %f, p-value=%f, slope=%f, and intercept=%f", R2, p.value, slope, intercept)
cat(output)

model<-lm(bwt~ad, data=secher)
png(filename="bwt_ad.png")
plot(bwt~ad, data=secher)
abline(model)
dev.off()
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("R2 = %f, p-value=%f, slope=%f, and intercept=%f", R2, p.value, slope, intercept)
cat(output)

model<-lm(bwt~bpd+ad, data=secher)
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value) 
cat(output)

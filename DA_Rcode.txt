1.cwur dataset visualizations

> getwd()
[1] "C:/Users/girish narayan.s/Documents"
> setwd("C:/Users/girish narayan.s/Documents/r project")
> dataset<-read.csv("cwurdataset.csv")
> #printing top 10 universities
> df <- data.frame(dataset[1:100,])
> df <- droplevels(df)
> 
> p <- as.data.frame(table(df$country))
> colnames(p) <- c("Country", "Frequency")
> library(ggplot2)
> library(readr)



>#printing the universities in top 100
> plot1<- ggplot(p, aes(x = Country, y = Frequency, fill = Country))+xlab("Country") + ylab("Number of universities in top 100")+geom_bar(stat = "identity")+ggtitle("Countrywise distribution of top 100 universities [ CWUR ranking ]")+geom_text(aes(label = p$Frequency))
> l + theme(
+text = element_text(size=16, colour = "Maroon"),
+axis.text = element_text(size = 5),
+axis.text.x = element_text(size = 5),
+axis.text.y = element_text(size = 5),
+legend.key = element_rect(fill = "white"),
+legend.background = element_rect(fill = "#e0ffff"),
+legend.position = "top",
+legend.text =  element_text(size = 5),
+#panel.grid.major = element_line(colour = "navy"),
+panel.grid.minor = element_blank(),
+panel.background = element_rect(fill = "white")
+ )


>#qualityof education vs rank
> cc <- ggplot(df[1:100,], aes(x=quality_of_education, y=national_rank, color=country))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)
> cc + theme(
+     text = element_text(size=16, colour = "Navy"),
+     axis.text = element_text(size = 8),
+     axis.text.x = element_text(size = 8),
+     axis.text.y = element_text(size = 8),
+     legend.key = element_rect(fill = "white"),
+     legend.background = element_rect(fill = "#e0ffff"),
+     legend.position = "top",
+     legend.text =  element_text(size = 8),
+     legend.direction = "horizontal",
+     #panel.grid.major = element_line(colour = "navy"),
+     panel.grid.minor = element_blank(),
+     panel.background = element_rect(fill = "#FFCACB")
+ )

> #checking if the influence of the university affects the score or not
> ee <- ggplot(df[1:100,], aes(x=influence, y=score, color=country))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)

> ee + theme(
+     text = element_text(size=10, colour = "Maroon"),
+     axis.text = element_text(size = 10),
+     axis.text.x = element_text(size = 10),
+     axis.text.y = element_text(size = 10),
+     legend.key = element_rect(fill = "white"),
+     legend.background = element_rect(fill = "#FFCACB"),
+     legend.position = "top",
+     legend.text =  element_text(size = 10),
+     legend.direction = "horizontal",
+     #panel.grid.major = element_line(colour = "navy"),
+     panel.grid.minor = element_blank(),
+     panel.background = element_rect(fill = "#e0ffff")
+ )


> #to check how alumni employment affects the code
> gg <- ggplot(df[1:100,], aes(x=alumni_employment, y=score, color=country))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)
> gg+ theme(
+     text = element_text(size=10, colour = "Maroon"),
+     axis.text = element_text(size = 10),
+     axis.text.x = element_text(size = 10),
+     axis.text.y = element_text(size = 10),
+     legend.key = element_rect(fill = "white"),
+     legend.background = element_rect(fill = "#FFCACB"),
+     legend.position = "top",
+     legend.text =  element_text(size = 10),
+     legend.direction = "horizontal",
+     #panel.grid.major = element_line(colour = "navy"),
+     panel.grid.minor = element_blank(),
+     panel.background = element_rect(fill = "#e0ffff")
+ )

>#quality of faculty vs rank
> dd <- ggplot(df[1:100,], aes(x=quality_of_faculty, y=score, color=country))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)
> dd + theme(
+     text = element_text(size=10, colour = "Maroon"),
+     axis.text = element_text(size = 5),
+     axis.text.x = element_text(size = 5),
+     axis.text.y = element_text(size = 5),
+     legend.key = element_rect(fill = "white"),
+     legend.background = element_rect(fill = "#FFCACB"),
+     legend.position = "top",
+     legend.text =  element_text(size = 5),
+     legend.direction = "horizontal",
+     #panel.grid.major = element_line(colour = "navy"),
+     panel.grid.minor = element_blank(),
+     panel.background = element_rect(fill = "#e0ffff")
+ )


2.times dataset visualizations

#teaching vs rank
> setwd("C:/Users/girish narayan.s/Documents/r project")
> times<-read.csv("timesData.csv")
> library(ggplot2)
> library(readr)
> dft <- data.frame(times[1:100,])
> dft <- droplevels(dft)
> dd <- ggplot(dft[1:100,], aes(x=teaching, y=world_rank, color=country))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)
> dd + theme(
+          text = element_text(size=10, colour = "Maroon"),
+          axis.text = element_text(size = 5),
+          axis.text.x = element_text(size = 5),
+          axis.text.y = element_text(size = 5),
+          legend.key = element_rect(fill = "white"),
+          legend.background = element_rect(fill = "#FFCACB"),
+          legend.position = "top",
+          legend.text =  element_text(size = 5),
+          legend.direction = "horizontal",
+          #panel.grid.major = element_line(colour = "navy"),
+              panel.grid.minor = element_blank(),
+          panel.background = element_rect(fill = "#e0ffff")
+      )


>#printing the universities in top 100
> p <- as.data.frame(table(df$country))
> colnames(p) <- c("Country", "Frequency")
> library(ggplot2)
> library(readr)
> plot1<- ggplot(p, aes(x = Country, y = Frequency, fill = Country))+xlab("Country") + ylab("Number of universities in top 100")+geom_bar(stat = "identity")+ggtitle("Countrywise distribution of top 100 universities [ CWUR ranking ]")+geom_text(aes(label = p$Frequency))
> l + theme(
+text = element_text(size=16, colour = "Maroon"),
+axis.text = element_text(size = 5),
+axis.text.x = element_text(size = 5),
+axis.text.y = element_text(size = 5),
+legend.key = element_rect(fill = "white"),
+legend.background = element_rect(fill = "#e0ffff"),
+legend.position = "top",
+legend.text =  element_text(size = 5),
+#panel.grid.major = element_line(colour = "navy"),
+panel.grid.minor = element_blank(),
+panel.background = element_rect(fill = "white")
+ )

3.shanghai dataset visuzalizations

> shan<-read.csv("shanghaiData.csv")
> dfs <- data.frame(shan[1:100,])
> dfs <- droplevels(dfs)

#alumni vs rank

> cc <- ggplot(dfs[1:100,], aes(x=alumni, y=total_score, color=year))+geom_point() + geom_smooth(method=lm,se=FALSE, fullrange=TRUE)
> cc+ theme(
+          text = element_text(size=10, colour = "Maroon"),
+          axis.text = element_text(size = 5),
+          axis.text.x = element_text(size = 5),
+          axis.text.y = element_text(size = 5),
+          legend.key = element_rect(fill = "white"),
+          legend.background = element_rect(fill = "#FFCACB"),
+          legend.position = "top",
+          legend.text =  element_text(size = 5),
+          legend.direction = "horizontal",
+          #panel.grid.major = element_line(colour = "navy"),
+              panel.grid.minor = element_blank(),
+          panel.background = element_rect(fill = "#e0ffff")
+      )


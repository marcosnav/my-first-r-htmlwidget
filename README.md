# my-first-r-htmlwidget

Trying out the development of R htmlwidgets, called this widget "tanuki" because "Pom Poko" 🦝

E.g:

**The following produces**
```Rmd
---
title: "testing-widgets"
output: html_document
---

```{r}
library(tanuki)
nodes <- list(
  list(id = "root", isroot = TRUE, topic = "RStudio"),
  list(id = "connect", parentid = "root", topic = "Connect", direction = "left"),
  list(id = "ide", parentid = "root", topic = "IDE")
)
tanuki(nodes)
```

**Rendering result screenshot**
![Screen Shot 2020-11-04 at 15 47 57](https://user-images.githubusercontent.com/3621593/98176201-54780e00-1eb5-11eb-9950-0b60ad406c99.png)

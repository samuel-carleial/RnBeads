############################################################################
#' test_utils.R
#'
#' Tests for the imputation, CNV estimation and age prediction methods in RnBeads
############################################################################

#test_cnv <- function(){
#  require(RnBeads.hg19)
#  dir.report <- file.path(tempdir(),"report43/")
#  unlink(dir.report,recursive = TRUE)
#  report <- createReport(file.path(dir.report,'index.html'),'MyReport',init.configuration=TRUE)
#  data(small.example.object)
#  report <- rnb.step.cnv(rnb.set.example,report)
#  passed <- inherits(report,"Report")
#  unlink(dir.report,recursive = TRUE)
#  checkTrue(passed)
#}

test_imputation <- function(){
  require(RnBeads.hg19)
  data(small.example.object)
  methData <- meth(rnb.set.example)
  methData <- apply(methData,2,function(x){
    x[sample(1:length(x),42)] <- NA
    x
  })
  rnb.set.example@meth.sites <- methData
  rnb.set.knn <- rnb.execute.imputation(rnb.set.example,method = "knn")
  rnb.set.samples <- rnb.execute.imputation(rnb.set.example,method = "mean.samples")
  rnb.set.cpgs <- rnb.execute.imputation(rnb.set.example,method = "mean.cpgs")
  rnb.set.random <- rnb.execute.imputation(rnb.set.example,method = "random")
  passed <- !(any(is.na(meth(rnb.set.knn)))) && !(any(is.na(meth(rnb.set.samples)))) && !(any(is.na(meth(rnb.set.cpgs)))) && !(any(is.na(meth(rnb.set.random))))
  checkTrue(passed)
}

test_age.prediction <- function(){
  require(RnBeads.hg19)
  data(small.example.object)
  rnb.set.example <- rnb.execute.age.prediction(rnb.set.example)
  ph <- pheno(rnb.set.example)
  passed <- is.element("predicted_ages",colnames(ph)) && all(is.numeric(ph$predicted_ages))
  checkTrue(passed)
}

test_utils <- function(){
  logger.start("Testing imputation")
  test_imputation()
  logger.completed()
  logger.start("Testing age prediction")
  test_age.prediction()
  logger.completed()
#  logger.start("Testing CNV computation")
#  test_cnv()
#  logger.completed()
}

test_utils()

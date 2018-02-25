library(testthat)

expect_that(farsPackage::make_filename(2014),equals("accident_2014.csv.bz2"))

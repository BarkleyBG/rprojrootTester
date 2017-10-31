
## an even-more-minimal MWE than test_myFun.R



## Should pass
file1 <- rprojroot::find_testthat_root_file("A.txt")

## WORKS NOW with helper.R
file2 <- find_testthat_root_file("B.txt")

## also works with helper.R
file3 <- quickLook("C.txt")


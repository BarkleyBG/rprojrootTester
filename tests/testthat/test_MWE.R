
## an even-more-minimal MWE than test_myFun.R



## Should pass
file1 <- rprojroot::find_testthat_root_file("A.txt")

## Should fail
file2 <- find_testthat_root_file("B.txt")



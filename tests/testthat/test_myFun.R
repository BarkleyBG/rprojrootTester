
# 1. create myFun.R
# 2. devtools::use_testthat()
# 3. write test_myFun.R and save it to tests/testthat
# 4. add "rprojroot" to SUGGESTS in DESCRIPTION
# 5. add `library(rprojroot)` to tests/testthat.R
# 6. save before and after to tests/before.Rdata and tests/after.Rdata
# 7. Comment out the code,
# 8. Create unit test loading the before.Rdata and after.Rdata
# 9. Build package (control + shift + B)
# 10. Test package (devtools::test() or control + shift + T)
#         --- This fails when loading after.Rdata even though
#             library(rprojroot) called in tests/testthat.R in Step 5

### step 7: comment this out
# set.seed(213)
# before <- rnorm(3)
#
# save(before, file=rprojroot::find_testthat_root_file(
#   "..", "before.Rdata"
# ))
#
# after <- myFun(before)
#
# save(after, file=rprojroot::find_testthat_root_file(
#   "..", "after.Rdata"
# ))

load(
  file=rprojroot::find_testthat_root_file(
  "..", "before.Rdata"
))

after_new <- myFun(before)

load(
  find_testthat_root_file(
  "..", "after.Rdata"
))

testthat::test_that(
  "myFun passes test",
  testthat::expect_equal(
    after,
    after_new
  )
)

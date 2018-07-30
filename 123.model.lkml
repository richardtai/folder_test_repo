connection: "comic_sales"

# # Absolute paths work
# include: "a_duplicate_test_dir/subdir/drag_me.view.lkml"
# explore: test_view {}

# Relative paths do not work, but they should.
include: "does_not_work.view.lkml"
explore: does_not_work {
  from: does_not_work
}

# Relative paths with navgiation do not work, but they should.
# Should this be raising an error?
include: "../hello_its_me.view.lkml"
explore: hello {
  from: hello
}

include: "~/titles.view.lkml"
explore: titles {}

include: "../../hello_its_me.view.lkml"

view: test {}

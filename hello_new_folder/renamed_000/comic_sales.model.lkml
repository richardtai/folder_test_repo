connection: "comic_sales"

# include all the views
include: "*.view.lkml"

include: "a_duplicate_test_dir/subdir/subdir2/subdir3/subdir4_but_with_an_obnoxiously_long_name/weeeeee.view.lkml"

include: "a_duplicate_test_dir/hello_its_me.view.lkml"
explore: hello {}

# include all the dashboards
include: "*.dashboard"
# Here's another commit.
explore: publishers {}
#
# explore: sales {}

explore: titles {}

# Test

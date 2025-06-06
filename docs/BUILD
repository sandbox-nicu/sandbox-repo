load("@rules_pkg//pkg:tar.bzl", "pkg_tar")

print("FAKE BUILD")

filegroup(
    name = "doc_files",
    srcs = glob([
        "**/*.md"
    ]),
)

sh_test(
    name = "test",
    srcs = ["test.sh"],
    size = "small",
)

genrule(
    name = "run_test_script",
    srcs = ["test.sh"],
    outs = ["test_output.txt"],
    cmd = "bash $(location test.sh) > $@",
)

pkg_tar(
    name = "github_pages__release",
    srcs = [
        ":doc_files",
        ":run_test_script",
    ],
    extension = "tar",
    visibility = ["//visibility:public"],
) 
load("@rules_pkg//pkg:tar.bzl", "pkg_tar")
load("@bazel_skylib//rules:shell_test.bzl", "shell_test")

print("FAKE BUILD")

filegroup(
    name = "doc_files",
    srcs = glob([
        "**/*.md"
    ]),
)

shell_test(
    name = "test",
    srcs = ["test.sh"],
    size = "small",
)

pkg_tar(
    name = "github_pages__release",
    srcs = [":doc_files"],
    extension = "tar",
    visibility = ["//visibility:public"],
) 
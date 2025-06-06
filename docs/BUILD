load("@rules_pkg//pkg:tar.bzl", "pkg_tar")

print("FAKE BUILD")

filegroup(
    name = "doc_files",
    srcs = glob([
        "**/*.md"
    ]),
)

pkg_tar(
    name = "github_pages__release",
    srcs = [":doc_files"],
    extension = "tar",
    visibility = ["//visibility:public"],
) 
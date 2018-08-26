load(
    "@bazel_tools//tools/jdk:default_java_toolchain.bzl",
    "default_java_toolchain",
)

config_setting(
    name = "java11",
    values = {
        "java_toolchain": ":toolchain_vanilla",
    },
)

java_runtime(
    name = "jdk11",
    java_home = "/usr/lib64/jvm/java-11",
    visibility = ["//visibility:public"],
)

filegroup(
    name = "vanillajavabuilder",
    srcs = ["@bazel_tools//tools/jdk:VanillaJavaBuilder_deploy.jar"],
)

default_java_toolchain(
    name = "toolchain_vanilla",
    forcibly_disable_header_compilation = True,
    javabuilder = [":vanillajavabuilder"],
    jvm_opts = [],
    visibility = ["//visibility:public"],
)

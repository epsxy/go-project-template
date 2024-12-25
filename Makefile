
gazelle:
	bazel run //:gazelle
tidy:
	bazel run @rules_go//go -- mod tidy -v
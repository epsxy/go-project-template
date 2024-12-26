run:
	bazel run //:go-project-template
gazelle:
	bazel run //:gazelle
tidy:
	bazel run @rules_go//go -- mod tidy -v
.PHONY:
eval:
	@opa eval --package main --format=raw --bundle . 'deny[_]'

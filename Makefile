build:
	docker build -t playwright-test .

test:
	docker run --rm -p 9323:9323 -v $(PWD)/tests:/app/tests -v $(PWD)/playwright.config.js:/app/playwright.config.js -w /app playwright-test

.PHONY: test build


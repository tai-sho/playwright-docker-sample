FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

RUN npm i -D @playwright/test && npx playwright install

RUN mkdir /app/tests

# If you have a Playwright configuration file, specify its location.

CMD ["npx", "playwright", "test", "/app/tests"]


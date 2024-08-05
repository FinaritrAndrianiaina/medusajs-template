FROM node:20-slim AS base
WORKDIR /app

FROM base AS prod-deps
COPY package.json  ./
COPY yarn.lock ./
RUN yarn 

FROM base AS build
COPY . /app
COPY --from=prod-deps /app/node_modules /app/node_modules
RUN yarn run build

FROM base
COPY --from=build /app /app
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
EXPOSE 9000
ENTRYPOINT ["/app/entrypoint.sh"]
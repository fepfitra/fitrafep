FROM oven/bun:latest

COPY package.json ./
COPY src ./
COPY public ./
COPY astro.config.mjs ./
COPY tsconfig.json ./

EXPOSE 4321
RUN bun install && bun run build
CMD ["bun", "run", "start"]

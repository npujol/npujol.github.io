---
tags:
- roadmap
- docker
- docker-images
- ready
- online
---

# docker-images-image-size-and-security

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/building-container-images/image-size-and-security)__

## Image Size and Security

When building container images, it’s essential to be aware of both image size and security. The size of the image affects the speed at which your containers are built and deployed. Smaller images lead to faster builds and reduced network overhead when downloading the image. Security is crucial because container images can contain vulnerabilities that could potentially put your applications at risk.

## Reducing Image Size

* __Use an appropriate base image:__ Choose a smaller, more lightweight base image that includes only the necessary components for your application. For example, consider using the `alpine` variant of an official image, if available, as it’s typically much smaller in size.

```bash
FROM node:14-alpine

```

* __Run multiple commands in a single `RUN` statement:__ Each `RUN` statement creates a new layer in the image, which contributes to the image size. Combine multiple commands into a single `RUN` statement using `&&` to minimize the number of layers and reduce the final image size.

```bash
RUN apt-get update && \
    apt-get install -y some-required-package

```

* __Remove unnecessary files in the same layer:__ When you install packages or add files during the image build process, remove temporary or unused files in the same layer to reduce the final image size.

```bash
RUN apt-get update && \
    apt-get install -y some-required-package && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

```

* __Use multi-stage builds:__ Use multi-stage builds to create smaller images. Multi-stage builds allow you to use multiple `FROM` statements in your Dockerfile. Each `FROM` statement creates a new stage in the build process. You can copy files from one stage to another using the `COPY --from` statement.

```bash
FROM node:14-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:14-alpine
WORKDIR /app
COPY --from=build /app/dist ./dist
COPY package*.json ./
RUN npm install --production
CMD ["npm", "start"]

```

* __Use `.dockerignore` file:__ Use a `.dockerignore` file to exclude unnecessary files from the build context that might cause cache invalidation and increase the final image size.

```bash
node_modules
npm-debug.log

```

## Enhancing Security

* __Keep base images updated:__ Regularly update the base images you’re using in your Dockerfiles to ensure they include the latest security patches.
* __Avoid running containers as root:__ Always use a non-root user when running your containers to minimize potential risks. Create a user and switch to it before running your application.

```bash
RUN addgroup -g 1000 appuser && \
    adduser -u 1000 -G appuser -D appuser
USER appuser

```

* __Limit the scope of `COPY` or `ADD` instructions:__ Be specific about the files or directories you’re copying into the container image. Avoid using `COPY . .` as it may unintentionally include sensitive files.

```bash
COPY package*.json ./
COPY src/ src/

```

* __Scan images for vulnerabilities:__ Use tools like [Anchore](https://anchore.com/) or [Clair](https://github.com/quay/clair) to scan your images for vulnerabilities and fix them before deployment.

By following these best practices, you’ll be able to build more efficient and secure container images, leading to improved performance and a reduced risk of vulnerabilities in your applications.

Visit the following resources to learn more:

* [@official@Multi-stage builds](https://docs.docker.com/build/building/multi-stage/)
* [@feed@Explore top posts about Security](https://app.daily.dev/tags/security?ref=roadmapsh)

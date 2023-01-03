# TEST Deploy

## quick start
```sh
# install
pnpm install

# for develop
pnpm dev

# build for image
pnpm build --base=/BASE_PLACEHOLDER/

# build image
docker build . app-image:v1.0.0

# start image
docker run --env-file=.env.production app-image:v1.0.0
```

function dnode -a nodeVersion
  set --erase argv[1]
  docker run -it --rm \
    --user 1000 \
    --network host \
    --name node-exec \
    -v ~/.npmrc:/home/node/.npmrc \
    -v ~/.npm:/home/node/.npm \
    -v $PWD:$PWD \
    -w $PWD \
    node:$nodeVersion $argv
end

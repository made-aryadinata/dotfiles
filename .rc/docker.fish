function dnode -a filename nodeVersion
  docker run -it --rm --name running-script -v "$PWD":/usr/src/app -w /usr/src/app node:$nodeVersion node $filename
end

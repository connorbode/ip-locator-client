command -v curl >/dev/null 2>&1 || {
  echo >&2 "Please install curl and re-run."
  exit 1; 
}

displayUsage () {
  echo "usage: iplocator action [options]"
  echo "  action: register, identify, locate"
  echo "  options:"
  echo "    -k --key the key for the machine"
  echo "    -s --secret the secret for the application"
}

if [ -z "$1" ]; then
  displayUsage
fi

if [ "$1" != "register" ] && [ "$1" != "identify" ] && [ "$1" != "locate" ]; then
  echo "here"
fi
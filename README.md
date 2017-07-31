# Introduction
This container exposes the VBoxManage utility from Oracle VirtualBox.
This container is not intended to start Virtual Machines but instead for e.g. creating or modifying the VDI files.
# Usage

**Tip**:
Define a function as shortcut for invoking VBoxManage similiar as the following:
```
function VBoxManageWrapper {
  local data_dir=$1
  shift
  docker run -it -e "DATA_DIR=$data_dir" cubeearth/tools-vboxmanage $@
}
```

Scope | Command
----- | -------
original command | ```VBoxManage list hostinfo```
docker-compose | ```DATA_DIR='./data' docker-compose run main list hostinfo```
docker | ```docker run -it -e "DATA_DIR=./data" cubeearth/tools-vboxmanage list hostinfo```
wrapper | ```VBoxManageX "./data" list hostinfo```

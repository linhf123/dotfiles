# https://stackoverflow.com/a/65142525
export VISUAL=$ZSH_CUSTOM/shells/code-wait.sh
export EDITOR=$ZSH_CUSTOM/shells/code-wait.sh

export GITHUB_NAME="Wxh16144"

# /Users/{username} => ~
export APP=~/Library/Application\ Support
export ICLOUD=~/Library/Mobile\ Documents/com~apple~CloudDocs

# Increase Bash history size. Allow 32³ entries; the default is 1000.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";

# my projects directory
export CONFIG="$HOME/Config"
export SCRIPTS="$HOME/Scripts"
export WORKSPACE="$HOME/Code"
# code directory
export COMPANY=$WORKSPACE/company
export OSS=$WORKSPACE/oss
export MY=$WORKSPACE/self
export PLAY=$WORKSPACE/playground

# registry
# export COMPANY_NPM_REGISTRY="https://packages.aliyun.com/616ff38165b9775dd591fcc9/npm/npm-registry/"
export MY_NPM_REGISTRY="http://nas.wxhboy.cn:98/"
# export COMPANY_DOCKER_REGISTRY="https://example.com"

# git backup
export BACKUP_REMOTE_NAME="backup"

# temp
# https://apple.stackexchange.com/a/22716
# https://iboysoft.com/wiki/tmp-folder-mac.html
# export OSX_TMPDIR=$TMPDIR


# ====== footer ====== #
function __internal_ensure_dir() {
  local dirs=(
    $CONFIG
    $SCRIPTS
    $WORKSPACE
    $COMPANY
    $OSS
    $MY
    $PLAY
  )

  for dir in ${dirs[@]}; do
    if [ ! -d $dir ]; then
      mkdir -p $dir
    fi
  done
}

__internal_ensure_dir

#!/bin/bash
####################################################################
#                          macOS defaults                          #
# Please modify webui-user.sh to change these instead of this file #
####################################################################

export install_dir="$HOME"
export COMMANDLINE_ARGS="--skip-torch-cuda-test --skip-install --opt-split-attention --no-half --precision full --no-half-vae --opt-sdp-attention --upcast-sampling --enable-insecure-extension-access --use-cpu all --share --gradio-auth Colin:17NOV2005"

# --use-cpu all
# --share --gradio-auth Colin:17NOV2005
# --reinstall-torch

export TORCH_COMMAND="pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cpu"

export PYTORCH_ENABLE_MPS_FALLBACK=1
export PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0

# Add git and python to PATH
export PATH="$PWD/bin-deps/python/3.10.13/bin:$PWD/bin-deps/git/bin:$PATH"
export GIT_EXEC_PATH="$PWD/bin-deps/git/libexec/git-core"
export GIT_TEMPLATE_DIR="$PWD/bin-deps/git/share/git-core/templates"

if [[ -x "$(command -v python3.10)" ]]
then
    python_cmd="python3.10"
fi

####################################################################

#! /bin/bash
SCRIPT=$(readlink -f $0)
git_dir=$(dirname $SCRIPT)
theme=cyan
theme_file=${git_dir}/tmux-themepack/powerline/block/${theme}.tmuxtheme

usr_tmux_conf=~/.tmux.conf

git submodule init
git submodule update
cat ${git_dir}/tmux.conf > ${usr_tmux_conf}
echo "source-file ${theme_file}" >> ${usr_tmux_conf}



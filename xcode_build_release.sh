#! /bin/zsh
source ~/.zshrc

send_to_wx_appid=$1
ready_content="build_is_ready"
success_content="build success ❤️"
time_send.sh $send_to_wx_appid "$success_content"
echo "send ready\n"
fastlane ios release
time_send.sh $send_to_wx_appid $success_content
echo "send build ok"
function fish_greeting
  set_color brblack

  echo 👋 @(whoami) on (hostname)
  echo (date "+%Y/%m/%d %H:%M:%S") / UNIX: (date +%s) / UTC: (date -u "+%m/%d %H:%M")
  echo (uptime)

  set_color normal
end

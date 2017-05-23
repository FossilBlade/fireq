{{>dev.sh}}

feature=(./features/*.feature)
[ -f $feature ] || exit 0

{{>add-dbs.sh}}
{{>testing.sh}}

time behave --format progress2 --logging-clear-handlers --logcapture

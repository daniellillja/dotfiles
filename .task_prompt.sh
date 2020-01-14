#!/bin/bash

get_prompt() {
	context="$(task _get rc.context)"
	if [ ! -z "$context" ]; then context="[$context] "; fi
	most_urgent_task=$(task next limit:1 | tail -n +4 | head -n +1 | awk '{print $1}')
	most_urgent_task_desc=$(task _get $most_urgent_task.description)
	PS1=$(printf "%s%s | %s > " \
		"$context" \
		"$most_urgent_task_desc" \
		$(pwd))
}

PROMPT_COMMAND=get_prompt

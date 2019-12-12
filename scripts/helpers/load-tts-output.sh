#!/bin/bash
cd $(dirname $0)
curl -G -H 'Referer: http://translate.google.com/' --output - \
-H 'User-Agent: stagefright/1.2 (Linux;Android 5.0)' \
--data-urlencode "ie=UTF-8" \
--data-urlencode "tl=ru" \
--data-urlencode "client=tw-ob" \
--data-urlencode "q=$1" \
https://translate.google.com/translate_tts
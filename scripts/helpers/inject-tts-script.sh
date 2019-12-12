#!/bin/bash
cd $(dirname $0)

echo "
<script>
function playTTS() {
    return new Promise(async (resolve, reject) => {
        // console.log(`https://translate.google.com/translate_tts\?ie=UTF-8\&tl=ru\&client=tw-ob\&q=\${encodeURIComponent(text)}`)
        let res = await fetch(\"/tts\")
        let blob = await res.blob()
        let audio = new Audio(URL.createObjectURL(blob))
        audio.autoplay = true
        audio.onended = () => {
            audio.remove()
            resolve()
        }
        audio.onerror = () => {
            audio.remove()
            reject()
        }
        document.body.appendChild(audio)
    })
}
playTTS()
</script>
"

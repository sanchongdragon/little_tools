F1::

; InputBox, OutputVar , Title, Prompt, HIDE, Width, Height, X, Y, Locale, Timeout, Default

InputBox, toTranslate,簡易英翻中,請輸入英文,,600,150,,,,,%clipboard%

; StringLen, OutputVar, InputVar

StringLen, len,toTranslate

; ErrorLevel 為 0 是ok 為 1 是 cancel

if(%len% != 0 && ErrorLevel == 0){
	run, chrome.exe https://translate.google.com.tw/#auto/zh-TW/"%toTranslate%"
}
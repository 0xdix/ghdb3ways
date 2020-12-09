#!/bin/bash
if [ "$1" == "" ]
then
	echo "########### LIL DIX - GHDB SCRIPT ###########"
	echo "- - - - - -  - - -  - - - - - - - - - - - - -"
	echo "Example: $0 target.com"
	echo "- - - - - -  - - -  - - - - - - - - - - - - -"
else
SEARCH="firefox"
TARGET="$1"
echo "Choose source"
echo "1 - google"
echo "2 - bing"
echo "3 - duckduckgo"
read source
case $source in
"1")
	echo "############ SEARCHING WITH GOOGLE ############"
	echo "Search on Pastebin"
	$SEARCH "https://google.com/search?q=site:pastebin.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search on Trello"
	$SEARCH "https://google.com/search?q=site:trello.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search for files"
	$SEARCH "https://google.com/search?q=site:$TARGET+ext:php+OR+ext:asp+OR+ext:txt" 2> /dev/null
;;

"2")
	echo "############ SEARCHING WITH BING ############"
	echo "Search on Pastebin"
	$SEARCH "https://bing.com/search?q=site:pastebin.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search on Trello"
	$SEARCH "https://bing.com/search?q=site:trello.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search for files"
	$SEARCH "https://bing.com/search?q=site:$TARGET+ext:php+OR+ext:asp+OR+ext:txt" 2> /dev/null
;;

"3")
	echo "############ SEARCHING WITH DUCKDUCKGO ############"
	echo "Search on Pastebin - duckduckgo"
	$SEARCH "https://duckduckgo.com/?q=site:pastebin.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search on Trello - duckduckgo"
	$SEARCH "https://duckduckgo.com/?q=site:trello.com+$TARGET" 2> /dev/null
	echo "############################################"
	echo "Search for files - duckduckgo"
	$SEARCH "https://duckduckgo.com/?q=site:$TARGET+ext:php+OR+ext:asp+OR+ext:txt" 2> /dev/null
;;

esac
fi

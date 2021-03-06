def:
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p linux --name "ConspiracyChat" --icon icon.png --inject tes.js "https://tinychat.com/room/conspiracychat"
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p windows --name "ConspiracyChat" --icon icon.png --inject tes.js "https://tinychat.com/room/conspiracychat"
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p osx --name "ConspiracyChat" --icon icon.icns --inject tes.js "https://tinychat.com/room/conspiracychat"

	zip -r ConspiracyChat_Win.zip ConspiracyChat-win32-x64
	zip -r ConspiracyChat_Linux.zip conspiracy-chat-linux-x64
	zip -r ConspiracyChat_MacOS.zip ConspiracyChat-darwin-x64

linux:
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p linux --name "ConspiracyChat" --icon icon.png --inject tes.js  "https://tinychat.com/room/conspiracychat"
	rm -rf ~/bin/conspiracy-chat-linux-x64/	
	cp -r conspiracy-chat-linux-x64/ ~/bin/
	rm -rfv ~/bin/conspiracy-chat
	ln -s ~/bin/conspiracy-chat-linux-x64/conspiracy-chat ~/bin/

clone_pull:
	cd full_native
	wget -cmk --tries 10 tinychat.com/room/conspiracychat
	cd ..
	

vanilla:
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p linux --name "ConspiracyChat" --icon icon.png "https://tinychat.com/room/conspiracychat"
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p windows --name "ConspiracyChat" --icon icon.png "https://tinychat.com/room/conspiracychat"
	nativefier -u 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'  -p osx --name "ConspiracyChat" --icon icon.icns  "https://tinychat.com/room/conspiracychat"


clean:
	rm -rfv ConspiracyChat-win32-x64	
	rm -rfv conspiracy-chat-linux-x64
	rm -rfv ConspiracyChat-darwin-x64
	rm -rvf ConspiracyChat_Win.zip
	rm -rfv ConspiracyChat_Linux.zip
	rm -rfv ConspiracyChat_MacOS.zip

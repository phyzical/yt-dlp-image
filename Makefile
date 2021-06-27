build:
	docker build . -t phyzical/yt-dlp
push:
	docker push phyzical/yt-dlp
test-run:
	docker run --rm -u $(id -u):$(id -g) -v $(PWD)/test:/workdir:rw phyzical/yt-dlp \
	--download-archive "test.txt" --write-thumbnail --add-metadata --no-write-playlist-metafiles \
	--newline --console-title \
	--compat-options no-youtube-unavailable-videos --sponsorblock \
	-f bv*[ext=mp4]+ba[ext=m4a] \
	--write-auto-sub --cookies=cookies.txt --write-info-json --convert-subs=srt --sub-lang "en" \
	--merge-output-format mp4 -o "./test/%(upload_date)s.%(title)s.%(ext)s" "https://www.youtube.com/watch?v=Dy312cUHumk"

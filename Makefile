build:
	docker build . -t phyzical/yt-dlc
push:
	docker push phyzical/yt-dlc
test-run:
	docker run --rm -u $(id -u):$(id -g) -v $(PWD)/test:/workdir:rw phyzical/yt-dlc \
	--download-archive "test.txt" --write-thumbnail --add-metadata --no-write-playlist-metafiles \
	--compat-options no-youtube-unavailable-videos --sponsorblock \
	-f bv*[ext=mp4]+ba[ext=m4a] --datebefore $(shell date -v-1m '+%Y%m%d') \
	--write-auto-sub --cookies=cookies.txt --write-info-json --convert-subs=srt --sub-lang "en" \
	--merge-output-format mp4 -o "./test/%(upload_date)s.%(title)s.%(ext)s" "https://www.youtube.com/watch?v=Dy312cUHumk"

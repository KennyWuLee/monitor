inotifywait -m "/home/till/Downloads/auto/music/done/Music" -e create -e moved_to |
	while read path action file; do
		/home/till/.local/bin/gmupload --delete-on-success "$path$file"
		rm -r "$path$file"
	done


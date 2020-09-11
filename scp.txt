Copy files REMOTE -> LOCAL
scp username@ipaddress:file.txt /local/path/

Copy files LOCAL -> REMOTE
scp file.txt username@ipaddress:/remote/path/

Copy directory REMOTE -> LOCAL
scp -r username@ipaddress:/remote/path/ /local/path/

Copy directory Local -> REMOTE
scp -r /local/path/ username@ipaddress:/remote/path/



Copy Remote -> Remote
scp username@from_host:/remote/path/file.txt username@to_host:/remote/path/

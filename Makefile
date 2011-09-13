@PHONY: donwload upload copy-to-prod

copy-to-prod:
	rsync --delete -av wwwdocs/tcpw2011/ ../tcpw2011/wwwdocs/
	rsync --delete -av actdocs/tcpw2011/ ../tcpw2011/actdocs/

copy-from-prod:
	rsync --delete -av ../tcpw2011/wwwdocs/ wwwdocs/tcpw2011/
	rsync --delete -av ../tcpw2011/actdocs/ actdocs/tcpw2011/

upload:
	rsync -rlDvc wwwdocs/tcpw2011/ act:/home/apache/htdocs/conferences-test/wwwdocs/tcpw2011/
	rsync -rlDvc actdocs/tcpw2011/ act:/home/apache/htdocs/conferences-test/actdocs/tcpw2011/

download:
	rsync -avc act:/home/apache/htdocs/conferences-test/wwwdocs/tcpw2011/ wwwdocs/tcpw2011/
	rsync -avc act:/home/apache/htdocs/conferences-test/actdocs/tcpw2011/ actdocs/tcpw2011/

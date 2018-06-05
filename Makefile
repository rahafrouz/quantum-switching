install: calc_ui-ru.mo
	install qswitch  /usr/local/bin
	install qscore /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat qswitch.services`" /etc/services || cat qswitch.services >> /etc/services
	install qswitch.xinetd /etc/xinetd.d/qswitch
	# ln -sf /usr/local/bin/calc_ui /usr/local/bin/ncalc_ui
	# install qswitch-fa.mo /usr/share/locale/fa/LC_MESSAGES/qswitch.mo

calc_ui.pot: calc_ui
	xgettext -o calc_ui.pot -L Shell calc_ui

calc_ui-ru.mo: calc_ui-ru.po
	msgfmt -o calc_ui-ru.mo calc_ui-ru.po

clone:
	git clone https://github.com/itmo-infocom/calc_examples.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags

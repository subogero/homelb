install:
	cp lib/Tempolate.pm /usr/share/perl5
	cp -r bin /
	perl -lpe '$$h=1 if /homelb/; print "homelb" if /^exit 0/ && !$$h' -i /etc/rc.local
	homelb
uninstall:
	-for i in `homelb get`; do homelb del $$i; done
	perl -lne 'print unless /^homelb$$/' -i /etc/rc.local
	for in in bin/*; do rm /bin/$i; done
	rm /usr/share/perl5/Tempolate.pm

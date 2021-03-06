.PHONY : coverage
coverage :
	BISECT_ENABLE=YES jbuilder runtest
	bisect-ppx-report -html _coverage/ `find . -name 'bisect*.out'`

.PHONY : documentation
documentation :
	jbuilder build @doc
	find _build/default/_doc/gi-bindings-generator/ -type f |xargs sed -i 's/\.\.\/odoc\.css/odoc\.css/g'
	mv _build/default/_doc/odoc.css _build/default/_doc/gi-bindings-generator/
	rm -rf docs/*
	cp -rf _build/default/_doc/gi-bindings-generator/* docs/
	# cp odoc.css docs/
	jbuilder clean

.PHONY : update_glib2_raw
update_glib2_raw :
	jbuilder clean
	jbuilder build tools/glib_raw_generator.exe
	./_build/default/tools/glib_raw_generator.exe
	cp -rf tools/GLib/lib/* ../OCaml-GLib2/lib/

.PHONY : update_gtk3_raw
update_gtk3_raw :
	jbuilder clean
	jbuilder build tools/gtk3_raw_generator.exe
	./_build/default/tools/gtk3_raw_generator.exe
	cp -rf tools/Gtk/lib/* ../OCaml-Gtk3/lib/

.PHONY : update_gio2_raw
update_gio2_raw :
	jbuilder clean
	jbuilder build tools/gio_raw_generator.exe
	./_build/default/tools/gio_raw_generator.exe

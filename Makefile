.PHONY: clean doc remote_doc test

doc:
	(cd doc; make html)

remote_doc:
	curl -X POST http://readthedocs.org/build/rdcetl

clean:
	find . -name \*.pyc | xargs rm -f
	(cd doc; rm -rf _build/*)

test:
	nosetests --with-doctest --with-coverage

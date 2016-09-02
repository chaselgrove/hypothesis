default : build

build : dist/python-hypothesis-0.1.0.tar.gz

dist/python-hypothesis-0.1.0.tar.gz : 
	python setup.py sdist

register : 
	python setup.py register

upload : 
	python setup.py sdist upload

check : 
	python setup.py check

clean : 
	rm -f MANIFEST h_annot/*.pyc

clobber : clean
	rm -rf dist

# eof

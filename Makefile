all: env test packages

clean:
	bin/clean.sh

env:
	bin/env.sh

test:
	bin/test.sh

packages:
	bin/packages.sh

binary: clean env
	pip install pyinstaller==3.1.1
	pyinstaller binary.spec

activate:
	python -m venv env
	. env/bin/activate

install: activate
	pip install -U pip notebook pipreqsnb
	pip install -r requirements.txt

update: activate
	pipreqsnb --force

start: activate
	jupyter notebook

.PHONY: activate install update start

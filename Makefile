install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	# python -m pytest -vv --cov=hello --cov=greeting --cov=smath --cov=web tests
	# python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb

one-test:
	python -m pytest --vv tests/test_greeting.py::test_my_name4

debugthree:
	python -m pytest -vv --pdb --maxfail=4

format:
	black *.py

lint:
	pylint --disable=R,C app.py

all: install lint test format

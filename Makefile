
setup:
	python3 -m venv ~/.ml_project
	source ~/.ml_project/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1202 app.py

all: install lint test

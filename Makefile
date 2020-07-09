test.all:
	python -m pytest --cov=src --junitxml=pytest-report.xml --cov-report=xml tests/unit

test.index:
	python -m pytest --cov=src/index --cov-report=xml tests/unit/index

test.demo:
	python -m pytest --cov=src/demo --cov-report=xml tests/unit/demo

codecov.all:
	bash <(curl https://codecov.io/bash) -t 95b69f2e-cbd9-4d11-9841-f376ef338ea4 -f coverage.xml

codecov.demo:
	bash <(curl https://codecov.io/bash) -t 95b69f2e-cbd9-4d11-9841-f376ef338ea4 -F demo -f coverage.xml

codecov.index:
	bash <(curl https://codecov.io/bash) -t 95b69f2e-cbd9-4d11-9841-f376ef338ea4 -F index -f coverage.xml

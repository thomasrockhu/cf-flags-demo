test.all:
	python -m pytest --cov=src --junitxml=pytest-report.xml --cov-report=xml tests/unit

test.index:
	python -m pytest --cov=src/index --cov-report=xml tests/unit/index

test.demo:
	python -m pytest --cov=src/demo --cov-report=xml tests/unit/demo

codecov.all: 
	bash <(curl https://codecov.io/bash) -t 7e18214e-1fe2-445e-b098-794fb03feefd -f coverage.xml

codecov.demo:
	bash <(curl https://codecov.io/bash) -t 7e18214e-1fe2-445e-b098-794fb03feefd -F demo -f coverage.xml

codecov.index:
	bash <(curl https://codecov.io/bash) -t 7e18214e-1fe2-445e-b098-794fb03feefd -F index -f coverage.xml
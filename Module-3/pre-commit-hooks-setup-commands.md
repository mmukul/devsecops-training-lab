
## Pre-Commit hooks
pip install pre-commit
cd AWSGoat
pre-commit sample-config > .pre-commit-config.yaml
pre-commit install
pre-commit autoupdate
pre-commit run --all-files '''
import pytest
from src.index.index import Index

def test_uncovered_if():
    assert Index().uncovered_if() == False

def test_fully_covered():
    assert Index().fully_covered() == True





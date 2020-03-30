import pytest
from src.demo.demo import Demo

def test_tested_function():
    assert Demo().tested_function()

def test_untested_function():
    assert Demo().untested_function()

def test_another_tested_function():
    assert Demo().another_tested_function()

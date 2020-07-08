import pytest
from src.demo.demo import Demo

def test_tested_function():
    assert Demo().tested_function()

def test_partial_function():
    assert Demo().partial_function(True)
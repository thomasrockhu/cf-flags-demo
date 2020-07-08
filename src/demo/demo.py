class Demo(object):
    def untested_function(self):
        return True

    def tested_function(self):
        return True
    
    def partial_function(self, check):
        if check:
            return True
        else:
            return False
    
    def untested_function_two(self):
        return True
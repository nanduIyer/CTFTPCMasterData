import time

class utilities:
    ROBOT_LIBRARY_SCOPE = "TEST CASE"

    def __init__(self, appname):
       self.appname=appname


    def geneate_GUID(self,appname):
        localtime = time.localtime()
        formatted_time = time.strftime("%Y%m%d%H%M%S", localtime)
        return formatted_time + "_" + appname

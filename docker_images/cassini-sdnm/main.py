
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#  Copyright  (c) 2020  National Network for Education and Research (RNP)      +
#                                                                              +
#  Licensed under the Apache License, Version 2.0 (the "License");             +
#  you may not use this file except in compliance with the License.            +
#  You may obtain a copy of the License at                                     +
#                                                                              +
#      http://www.apache.org/licenses/LICENSE-2.0                              +
#                                                                              +
#  Unless required by applicable law or agreed to in writing, software         +
#  distributed under the License is distributed on an "AS IS" BASIS,           +
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    +
#  See the License for the specific language governing permissions and         +
#  limitations under the License.                                              +
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

from sdnm_cassini import init_logger
from sdnm_cassini.dataplane import CassiniDataPlane
import subprocess
import os


class CONFIG(object):
    def count(self):
        inter = os.listdir('/sys/class/net/')
        opt, eth = 0, 0
        for i in inter:
            if i == 'vif':
                opt += 1
            if i == 'ovif':
                eth += 1
        self.add_port(opt, eth)

    def add_port(self, opt, eth):
        for i in range(1, opt+1):
            cmd = "ovs-vsctl add-port oe{} ovif{}".format(i, i)
            self.exec_cmd(cmd)
            self.logger.info(cmd)

        for i in range(1, eth+1):
            cmd = "ovs-vsctl add-port xe{} vif{}".format(i, i)
            self.exec_cmd(cmd)
            self.logger.info(cmd)

    def exec_cmd(self, cmd):
        p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        while True:
            output = p.stdout.readline()
            if output == '' or p.poll() is not None:
                break
            if output:
                print(output.decode("utf-8").strip())


def main():
    logger = init_logger(__name__)
    dataplane = CassiniDataPlane()
    dataplane.init()

    conf = CONFIG()
    conf.count()


if __name__ == '__main__':
    main()



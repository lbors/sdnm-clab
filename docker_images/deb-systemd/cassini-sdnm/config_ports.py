from setuptools import setup
from setuptools.command.install import install
import subprocess
import os
import sys
import yaml


class OVS(object):
    def add_port_bridge(self, bridge, port):
        cmd = "ovs-vsctl add-port {} {}".format(bridge, port)
        self.exec_cmd(cmd)
        print(cmd)

    def rem_port_bridge(self, bridge, port):
        cmd = "ovs-vsctl del-port {} {}".format(bridge, port)
        self.exec_cmd(cmd)
        print(cmd)

    def add_bridge(self, name):
        cmd = "ovs-vsctl add-br {}".format(name)
        self.exec_cmd(cmd)
        print(cmd)

    def rem_bridge(self, name):
        cmd = "ovs-vsctl del-br {}".format(name)
        self.exec_cmd(cmd)
        print(cmd)

    def exec_cmd(self, cmd):
        p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        while True:
            output = p.stdout.readline()
            if output == '' or p.poll() is not None:
                break
            if output:
                print(output.decode("utf-8").strip())


if __name__ == '__main__':
    ovs = OVS()

    def port_ovs(file):
        with open(file) as config:
            try:
                interfaces = yaml.load(config, Loader=yaml.FullLoader)

                for type, port in interfaces['connection'].items():
                    ovs.add_port_bridge(port[0], port[1])
            except yaml.YAMLError as exc:
                print(exc)

    file = sys.argv[1]
    port_ovs(file)


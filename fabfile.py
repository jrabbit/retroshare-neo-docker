from fabric.api import *

@task
def build():
	local("docker build -t jrabbit/retroshare:stable .")

@task
def push():
	local("docker push jrabbit/retroshare")


@task
def build_unstable():
	local("docker build -t jrabbit/retroshare:unstable -f unstable.Dockerfile .")

@task
def push_unstable():
	local("docker push jrabbit/retroshare:unstable")
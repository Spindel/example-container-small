# The small container example project

This shows a "Hello world" script (shellscript) in a small container built from
rootfs. This means that only the parts of the dep-tree you actually specify as
necessary are available.

Note that this uses the https://gitlab.com/ModioAB/build.mk infra for container
builds.

( build.mk is currently "all rights reserved" and not publicly available. Sadly.)


This example adds bash and openssh-clients to a container, and adds a hello
world binary file.


# The small container example project

This shows a "Hello world" script (shellscript) in a small container built from
rootfs. This means that only the parts of the dep-tree you actually specify as
necessary are available.

Note that this uses the https://gitlab.com/ModioAB/build.mk infra for container
builds.

( build.mk is currently "all rights reserved" and not publicly available. Sadly.)


This example adds bash and openssh-clients to a container, and adds a hello
world binary file.


# Things of note

Your runners need the x86_64 and buildah tag. For buildah tags, they need
privlieged mode, and /var/lib/containers need to NOT exist inside the
container. We use a fresh volume mount for that.  


build.mk sets the arguments to the Dockerfile for tag information and other
things, Dockerfile has been updated to reflect this.


The build phase should generate all the binaries/executables that the
Dockerfile need, add those to .gitlab-ci.yml and Makefile targets as necessary.


Note that this test-case uses a shellscript as it's supposed  `binary`, and
ssh-client as the (mandatory) dependency. Adjust those packages as necessary


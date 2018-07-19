# The small container example project

This shows a "Hello world" script (shellscript) in a small container built from
rootfs. This means that only the parts of the dep-tree you actually specify as
necessary are available.

Note that this uses the https://gitlab.com/ModioAB/build.mk infra for container
builds.

(build.mk is free software, you're welcome to use it in your projects!)

This example adds bash and openssh-clients to a container, and adds a hello
world binary file.


# Things of note

Your runners need the `x86_64` and `buildah` tag. For runners with `buildah` tags,
they need privlieged mode, and `/var/lib/containers` need to NOT exist inside the
container. We use a fresh volume mount for that.


`build.mk` sets the arguments to the Dockerfile for tag information and other
things,the included Dockerfile has been updated to reflect this.  
(This allows you to track a running container to which commit & branch is running, 
and when it was built.)

The `build` phase should generate all the binaries/executables that the
Dockerfile need. Add more `build` phase targets those to .gitlab-ci.yml 
and Makefile targets as necessary.

Note that this test-case uses a shellscript as it's supposed  `binary`, and
ssh-client as the (mandatory) dependency. Those are of course just examples.


# gitlab-ci configuration

Our gitlab-ci runner uses the below configuration, which makes it able to 
build containers with `buildah` inside `docker` containers without using any 
`docker in docker` hacks.


```toml
concurrent = 1
check_interval = 0

[[runners]]
  name = "the runner"
  url = "https://gitlab.com/ci"
  token = "ZEEEEEEEEEEEEEEEEEEEKRET"
  executor = "docker"

  [runners.docker]
    image = "busybox"
    privileged = true
    cap_add = ["SYS_ADMIN"]
    disable_cache = false
    volumes = ["/cache", "/var/lib/containers"]
    shm_size = 0
  [runners.cache]
```

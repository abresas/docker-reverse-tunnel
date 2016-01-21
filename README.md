Description
-----------

This container assumes you are already running ssh deamon on a host that is behind nat.
By running this container with --net=host, the container starts a reverse tunnel to a remote host,
that can then connect back to the host ssh deamon.

The ssh deamon is assumed to be running on port 22222, but that can be changed on entry.sh.

How to run
----------

Set environment variables MAINTAINANCE_SSH_USER, MAINTAINANCE_SSH_HOST and SSHPASS to the login details for the remote host.

When the container starts, if it logins successfully to the remote host, you will be able to login back to
the container by running

```
$ ssh -o "ProxyCommand nc %h %p" -i ~/.ssh/ssh_key container_user@localhost -p 19999

```

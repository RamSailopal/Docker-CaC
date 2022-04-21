# Role Name
=========

Ansible role to install Docker bench security on Ubuntu and then run the audit against running containers.


# Role Variables
--------------

**repdir** - The directory to pull the final report into. 
**rat** - The rating to check the Docker Bench security compliance rating against.

# Running the role
---------------

    - hosts: servers
      roles: 
        - Docker-CaC
      vars:
        repdir: /tmp

# License
-------

BSD

# References
------------------

Docker Bench Security - https://github.com/docker/docker-bench-security

# Author Information
------------------

Raman Sailopal

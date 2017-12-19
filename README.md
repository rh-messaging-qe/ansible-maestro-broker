Role Name
=========

This role installs a Message Broker, Apache ActiveMQ 5.11.3, for Maestro.

Build/Test Status
------------

Linux Build Status: [![Linux Build Status](https://api.travis-ci.org/msgqe/ansible-maestro-broker.svg?branch=master)](https://travis-ci.org/msgqe/ansible-maestro-broker)

Requirements
------------

The package libselinux-python is required for running the test.

Role Variables
--------------

| Name              | Default Value       | Description          |
|-------------------|---------------------|----------------------|
| `maestro_user` | maestro | Maestro system user |


Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

  - hosts: localhost
    remote_user: root
    roles:
      - ansible-maestro-broker

License
-------

Apache 2.0

Author Information
------------------

Messaging team @ redhat.com

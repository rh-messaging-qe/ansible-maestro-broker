Role Name
=========

This role installs a Message Broker, Apache Artemis 2.1.0, for Maestro.

Build/Test Status
------------

Linux Build Status: [![Linux Build Status](https://api.travis-ci.org/msgqe/mpt-maestro-broker.svg?branch=master)](https://travis-ci.org/msgqe/mpt-maestro-broker)

Requirements
------------

The package libselinux-python is required for running the test.

Role Variables
--------------

This role does not provide any configuration at the moment.

Dependencies
------------

This role depends on the [amq-broker](https://github.com/msgqe/amq-broker).

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

  - hosts: localhost
    remote_user: root
    roles:
      - mpt-maestro-broker

License
-------

Apache 2.0

Author Information
------------------

Messaging team @ redhat.com

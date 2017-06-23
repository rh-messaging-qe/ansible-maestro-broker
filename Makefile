# Copyright 2017 Red Hat, Inc. and/or its affiliates
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
TEST_INVENTORY?=tests/inventory

containers = cnt-centos7

clean:
	rm -rf ansible.cfg ./build
	docker rm -f $(containers) || true

test-prepare: clean
	printf '[defaults]\nroles_path=./build/\n' >ansible.cfg
	ansible-galaxy install -f -r tests/requirements.yml
	printf '[defaults]\nroles_path=./build:../\n' >ansible.cfg

test: test-prepare
	ansible-playbook -vvv tests/test.yml -i $(TEST_INVENTORY)
	rm ansible.cfg
	docker rm -f $(containers) || true

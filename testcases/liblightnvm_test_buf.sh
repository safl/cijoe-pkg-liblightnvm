#!/bin/bash
#
# Verify buffer-allocation mechanics in liblightnvm via `nvm_test_buf`
#
# This is a test-wrapper, wrapping the test provided by liblightnvm and thus
# assumes that the target system has the following installed:
#
# * liblightnvm
# * An Open-Channel SSD device, either physical hardware or virtual Qemu device
#
# And that the environment has defined NVM_DEV_IDENT identifying the device to
# use for testing
#
# shellcheck disable=SC2119
#
CIJ_TEST_NAME=$(basename "${BASH_SOURCE[0]}")
export CIJ_TEST_NAME
# shellcheck source=modules/cijoe.sh
source "$CIJ_ROOT/modules/cijoe.sh"
test::enter

if ! ssh::cmd "NVM_BE=$NVM_BE nvm_test_buf $NVM_DEV_IDENT 0 0"; then
  test::fail
fi

test::pass

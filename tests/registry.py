# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
# Also available under a BSD-style license. See LICENSE.

from typing import Callable, NamedTuple, Any

import torch

# The global registry of tests.
GLOBAL_TEST_REGISTRY = []


class Test(NamedTuple):
    """A description of a test as produced by the test frontend.
    """
    # Stable name for error reporting.
    #
    # This name's stability is also useful for backend, which want to
    # generate their own lower-level test suites based on this framework.
    #
    # It is expected that those backends will need additional
    # metadata to describe their test configurations, so having a unique
    # key to keep that information associated is important.
    unique_name: str
    # A callable which produces the module under test.
    # This is a callable to allow lazily creating the module.
    program_factory: Callable[[], torch.nn.Module]
    # A callable which provides external stimuli to the module.
    # The first parameter is a torch.nn.Module (or a `_Tracer` wrapping that
    # module, actually).
    # The secon parameter is a `TestUtils` instance for convenience.
    program_invoker: Callable[[Any], None]


def register_test_case(module_factory: Callable[[], torch.nn.Module]):
    """Convenient decorator-based test registration.

    Adds a `framework.Test` to the global test registry based on the decorated
    function. The test's `unique_name` is taken from the function name, the
    test's `program_factory` is taken from `module_factory`, and the
    `program_invoker` is the decorated function.
    """
    def decorator(f):
        GLOBAL_TEST_REGISTRY.append(
            Test(unique_name=f.__name__,
                 program_factory=module_factory,
                 program_invoker=f))
        return f

    return decorator

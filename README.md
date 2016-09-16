# test-unit with test-queue
## Prepare
```
bundle install
```

## Run test
### Basic
```
bundle exec rake test
```

### Parallel
#### using Collector::Descendant (default)
```
bin/testunit-queue test
```

#### using Collector::Load
```
LOAD=1 bin/testunit-queue test
```

#### using Collector::ObjectSpace
```
OBJ=1 bin/testunit-queue test
```

## Problem
If using Collector::Descendant, it does not work in parallel.

```
$ bin/testunit-queue test
Starting test-queue master (/tmp/test_queue_26517_70166003035600.sock)

==> Summary (4 workers in 0.0238s)

    [ 4] 0 tests, 0 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         0 suites in 0.0036s      (pid 26641 exit 0)
    [ 3] 0 tests, 0 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         0 suites in 0.0079s      (pid 26640 exit 0)
    [ 1] 0 tests, 0 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         0 suites in 0.0092s      (pid 26638 exit 0)
    [ 2] 10 tests, 14 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0213s      (pid 26639 exit 0)
```

If using Collector::Load, it works in parallel, but test suite is split in each directory.
```
$ LOAD=1 bin/testunit-queue test
Starting test-queue master (/tmp/test_queue_22661_70170397695240.sock)

==> Summary (4 workers in 0.0267s)

    [ 3] 0 tests, 0 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         0 suites in 0.0097s      (pid 22752 exit 0)
    [ 2] 1 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0174s      (pid 22751 exit 0)
    [ 4] 1 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0184s      (pid 22753 exit 0)
    [ 1] 8 tests, 10 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0238s      (pid 22750 exit 0)

```

If using Collector::ObjectSpace, it works in parallel as expected.
```
$ OBJ=1 bin/testunit-queue test
Starting test-queue master (/tmp/test_queue_25362_70298408322400.sock)

==> Summary (4 workers in 0.0315s)

    [ 2] 1 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0245s      (pid 25453 exit 0)
    [ 4] 3 tests, 4 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         2 suites in 0.0256s      (pid 25455 exit 0)
    [ 3] 4 tests, 6 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         2 suites in 0.0278s      (pid 25454 exit 0)
    [ 1] 2 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications         1 suites in 0.0290s      (pid 25452 exit 0)

```

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

#### using Collector::ObjectSpace
```
OBJ=1 bin/testunit-queue test
```

#### using Collector::Load
```
LOAD=1 bin/testunit-queue test
```

# Running Tests

## Pre reqs


Bring up (and SSH into) a vagrant box with the required configuration.

```
$ cd /path/to/vagrantfile
$ vagrant up
$ vagrant ssh
```

Become root:

```
$ sudo -s
```

Set the APPLICATION_ENV env variable

```
# export APPLICATION_ENV=development_vagrant
```

Move into the  project's test directory:

```
# cd /home/web/een-integration-tests/test/integration
```

## Running everything

To run setup, seed data & tests execute the `run.sh` shell script:

```
# ./run.sh
```

## Running the test only

To run only the tests, execute the `phpunit` shell script:

```
# ./vendor/bin/phpunit -c phpunit.xml.dist
```

## Running the seed data only

```
# cd /home/web/mason-seeddata
# sudo -E ./build/1-seed-data.sh
```
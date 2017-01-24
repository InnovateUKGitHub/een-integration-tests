 #Tests
 ## One time setup
 Run the following bash script to install dependancies for the test suite

    $ sudo -E ./build/2-test-compile.sh

## Running integration tests

    $ sudo -E ./build/3-test.sh


## TODO

    * Merge properties files (hostname in top level properties)
    * Remove duplication from build scripts
    * Move configs into Consul / Vault
    * Remove seed data from other projects
    * Update services to use /latest instead of /v10 etc
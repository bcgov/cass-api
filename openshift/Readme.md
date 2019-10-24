# OpenShift configuration files

This project uses the [openshift-developer-tools](https://github.com/BCDevOps/openshift-developer-tools/tree/master/bin) scripts to manage its OpenShift Build and Deployment configurations.  Refer to the associated project documentation for details.

# Setting up a local (MiniShift) environment

Please refer to the [openshift-developer-tools](https://github.com/BCDevOps/openshift-developer-tools/tree/master/bin) documentation for details.

# Publishing your Build and Deployment Configurations

Use `genParams.sh` to setup your parameters for your various environments.

Use `genBuilds.sh` to publish or update your build configurations.

Use `genDepls.sh` to publish or update your deployment configurations.

# Scripts 

Some scripts have been created to ease the development workflow when deploying things in your own development environment.  These aren't used in pathfinder as we typically import `json` template files directly.

## Extracting Audit Data

An interactive scripts has been written to assist in extracting audit data from the running instances in any of the environments.  This can be done by using the following script and following the prompts:

### `./extract-data.sh`

This will place all of the exported/extracted data into a folder called `EXTRACTED-DATA` and will be prefixed by the openshift project that it was exported from.

The data is in `csv` format for easier consumption by other analysis applications.

## Support

### `functions.sh`
>
> Importable collection of useful shell functions for setting up development environments.

# Automated Database Migrations

These are currently disabled due to errors when the migration is run on subsequent deployments even when there have been no changes to the schema or seed data.  See [migrate-db.sh](../database/migrate-db.sh) for details.

Until this is fixed a workaround is to uncomment the `liquibase` call in the scripts, build the API, and trigger a deployment.
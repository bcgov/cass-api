#!/usr/bin/env bash
SCRIPTDIR=$(dirname "$0")

echo "Running Liquibase"

# Postgres admin user is 'postgres'
export PG_ADMIN_USER="postgres"

cd "${SCRIPTDIR}/liquibase/"

echo "Skipping database migration due to errors that need to be addressed ..."

# Unexpected error running Liquibase: Validation Failed:
#      3 change sets check sum
#           structure/shersched.db.changelog.table-api_scope_APSC.xml::CRTTAB_APSC_1_0::Carol Geisler was: 7:b3b99435c297b78013e2c7d94e0c69f2 but is now: 7:1a0e3d3a8a0d7b4dfe892a9cb6c85942
#           structure/shersched.db.changelog.table-app_role_APRL.xml::CRTTAB_APRL_1_0::Carol Geisler was: 7:18dbf394f24f89c6372792cf9599f070 but is now: 7:4e3702abdaf0420df55a071b70002ef0
#           structure/shersched.db.changelog.table-app_user_USR.xml::CRTTAB_USR_1_0::Carol Geisler was: 7:eba6691f63c793f8ce88dd5d1f88aae4 but is now: 7:3a5f9129041449ad05d1a42cbb9b3db6


# SEVERE 10/22/19 3:32 PM: liquibase: Validation Failed:
#      3 change sets check sum
#           structure/shersched.db.changelog.table-api_scope_APSC.xml::CRTTAB_APSC_1_0::Carol Geisler was: 7:b3b99435c297b78013e2c7d94e0c69f2 but is now: 7:1a0e3d3a8a0d7b4dfe892a9cb6c85942
#           structure/shersched.db.changelog.table-app_role_APRL.xml::CRTTAB_APRL_1_0::Carol Geisler was: 7:18dbf394f24f89c6372792cf9599f070 but is now: 7:4e3702abdaf0420df55a071b70002ef0
#           structure/shersched.db.changelog.table-app_user_USR.xml::CRTTAB_USR_1_0::Carol Geisler was: 7:eba6691f63c793f8ce88dd5d1f88aae4 but is now: 7:3a5f9129041449ad05d1a42cbb9b3db6

# liquibase.exception.ValidationFailedException: Validation Failed:
#      3 change sets check sum
#           structure/shersched.db.changelog.table-api_scope_APSC.xml::CRTTAB_APSC_1_0::Carol Geisler was: 7:b3b99435c297b78013e2c7d94e0c69f2 but is now: 7:1a0e3d3a8a0d7b4dfe892a9cb6c85942
#           structure/shersched.db.changelog.table-app_role_APRL.xml::CRTTAB_APRL_1_0::Carol Geisler was: 7:18dbf394f24f89c6372792cf9599f070 but is now: 7:4e3702abdaf0420df55a071b70002ef0
#           structure/shersched.db.changelog.table-app_user_USR.xml::CRTTAB_USR_1_0::Carol Geisler was: 7:eba6691f63c793f8ce88dd5d1f88aae4 but is now: 7:3a5f9129041449ad05d1a42cbb9b3db6

# 	at liquibase.changelog.DatabaseChangeLog.validate(DatabaseChangeLog.java:266)
# 	at liquibase.Liquibase.update(Liquibase.java:210)
# 	at liquibase.Liquibase.update(Liquibase.java:192)
# 	at liquibase.integration.commandline.Main.doMigration(Main.java:1130)
# 	at liquibase.integration.commandline.Main.run(Main.java:188)
# 	at liquibase.integration.commandline.Main.main(Main.java:103)

# liquibase --driver=org.postgresql.Driver \
#          --contexts="$LIQUIBASE_CONTEXTS" \
#          --changeLogFile=shersched.db.changelog.MASTER.xml \
#          --url="jdbc:postgresql://postgres:$POSTGRES_SERVICE_PORT/$PG_DATABASE" \
#          --username=$PG_ADMIN_USER \
#          --password=$PG_ADMIN_PASSWORD \
#          --defaultSchemaName=$PG_DEFAULT_SCHEMA \
#          --logLevel=info update \
#          -DPOSTGRES_APP_USER=$PG_USER \
#          -DPOSTGRES_APP_PASS=$PG_PASSWORD \
#          -DPOSTGRES_CATALOG=$PG_DATABASE \
#          -DPOSTGRES_SCHEMA=$API_DATABASE_SCHEMA \
#          -DPOSTGRES_EXT_SCHEMA=$POSTGRES_EXT_SCHEMA
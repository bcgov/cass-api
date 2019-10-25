export PROJECT_NAMESPACE="apndkr"
export GIT_URI="https://github.com/bcgov/cass-api.git"
export GIT_REF="cass-renaming"

# Skip Jenkins pipeline processing for this project.  The pipelines are integrated into the build templates.
export SKIP_PIPELINE_PROCESSING=1

# The list of templates to ignore
export ignore_templates="api-postgress-deploy-bluegreen"
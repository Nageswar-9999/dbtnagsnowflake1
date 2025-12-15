{{ config(materialized='table') }}

SELECT
  '{{ env_var("DBT_CLOUD_JOB_NAME", "local_run") }}' AS job_name,
--   '{{ env_var("DBT_CLOUD_RUN_STARTED_AT", current_timestamp() ) }}' AS job_start_time,
  '{{ env_var("DBT_CLOUD_RUN_FINISHED_AT", null) }}' AS job_end_time,
  '{{ env_var("DBT_CLOUD_RUN_STATUS", "SUCCESS") }}' AS job_status 

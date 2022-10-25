.. demo_staging-create-table-telemetry

telemetry Staging Table Creation
=================================================================

Transform that runs Trino SQL statement to create staging table for telemetry tabular structure to ingest source data.

SQL:
++++

.. code-block:: sql


    create table if not exists {{ ns_context['schema_name'] }}.telemetry_0_1_1 (
        
        "position_x" int,
        "position_y" int,
        "position_z" int,
        "rotation_pitch" double,
        "rotation_roll" double,
        "rotation_yaw" double,
        "type" varchar,
        "timestamp" timestamp,
        "serial_number" varchar,
        "case" varchar,

        "p_iso_date" date, 
        "p_serial_num" varchar, 
        "p_dev_run" varchar
    ) with (
      format = 'parquet',
      partitioned_by = ARRAY[ 'p_iso_date', 'p_serial_num', 'p_dev_run' ]
    )


Default Run Parameters:
+++++++++++++++++++++++

.. code-block:: yaml

    schema_name: demo_staging
    location: TRINO_BUCKET
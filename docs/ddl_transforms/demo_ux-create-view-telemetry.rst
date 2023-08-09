.. demo_ux-create-view-telemetry

telemetry UX View Creation
=================================================================

Transform that runs Trino SQL statement to create a view for telemetry tabular structure from final tables to view in dashboards.

SQL:
++++

.. code-block:: sql


    CREATE OR REPLACE VIEW {{ ns_context['schema_name'] }}_ux.telemetry AS
    SELECT * FROM {{ ns_context['schema_name'] }}_final.telemetry_0_1_1


Default Run Parameters:
+++++++++++++++++++++++

.. code-block:: yaml

    schema_name: demo_staging
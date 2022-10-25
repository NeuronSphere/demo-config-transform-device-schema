.. demo_ux-create-view-event

event UX View Creation
=================================================================

Transform that runs Trino SQL statement to create a view for event tabular structure from final tables to view in dashboards.

SQL:
++++

.. code-block:: sql


    CREATE OR REPLACE VIEW {{ ns_context['schema_name'] }}.event AS
    SELECT * FROM demo_final.event_0_1_1


Default Run Parameters:
+++++++++++++++++++++++

.. code-block:: yaml

    schema_name: demo_staging
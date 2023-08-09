***Settings***
Library   resources.NeuronSphereCLI.NeuronSphereCLI
Variables   vars.py

***Test Cases***

Create Demo Source Schema
    Run Transform   ddl_01a-create-schema-demo_source   {"schema_name": "demo", "location": "TRINO_BUCKET"}

Create Demo Staging Schema
    Run Transform   ddl_01b-create-schema-demo_staging   {"schema_name": "demo_staging", "location": "TRINO_BUCKET"}

Create Demo Final Schema
    Run Transform   ddl_01c-create-schema-demo_final   {"schema_name": "demo_final", "location": "TRINO_BUCKET"}

Create Demo UX Schema
    Run Transform   ddl_01d-create-schema-demo_ux  {"schema_name": "demo_ux", "location": "TRINO_BUCKET"}

Create Demo Staging Event Table
    Run Transform   ddl_02a-demo_staging-create-table-event_0_1_1   {"schema_name": "demo_staging", "location": "TRINO_BUCKET"}

Create Demo Staging Telemetry Table
    Run Transform   ddl_02a-demo_staging-create-table-telemetry_0_1_1   {"schema_name": "demo_staging", "location": "TRINO_BUCKET"}

Create Demo Final Event Table
    Run Transform   ddl_02b-demo_final-create-table-event_0_1_1   {"schema_name": "demo_final", "location": "TRINO_BUCKET"}

Create Demo Final Telemetry Table
    Run Transform   ddl_02b-demo_final-create-table-telemetry_0_1_1   {"schema_name": "demo_final", "location": "TRINO_BUCKET"}

Create Demo UX Event View
    Run Transform   ddl_02c-demo_ux-create-view-event_0_1_1   {"schema_name": "demo_ux", "location": "TRINO_BUCKET"}

Create Demo UX Telemetry View
    Run Transform   ddl_02c-demo_ux-create-view-telemetry_0_1_1   {"schema_name": "demo_ux", "location": "TRINO_BUCKET"}
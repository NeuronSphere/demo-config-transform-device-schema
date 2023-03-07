# demo-config-transform-device-schema

Example NeuronSphere Transforms for loading data into Trino tables.

## Building and Loading Transforms.

After downloading this repository into your `$HMD_REPO_HOME` folder, the first step should be generating the Transform configurations.
The `neuronsphere` Python package must be installed to generate the transforms.

Generating or building the project is as simple as running the following in the root of the project.

```
hmd build
```

Once completed, you should see YAML files in the `./src/transforms` directory.
These are Provider Transform configurations.
They can be loaded into a locally running instance of the NeuronSphere Transform Service, via `hmd transform load-local --project demo-config-transform-device-schema` command.
Once the Transform Service has processed the YAML files, you should be able to see generated DAGs in the list at [http://localhost:175/home/].
The username and password for the local instance is `user`.

## Running the Transforms

Before trying to run these transforms, please ensure that DAGs with the same name as the YAML files appear at http://localhost:175/home/.
Also, you will need to generate some data via a Notebook in https://github.com/NeuronSphere/demo-notebooks-idl/.
The generated data is placed in `$HMD_HOME/data/raw/<iso_date>/<serial_num>/<dev_run>`.
The folders `iso_date`, `serial_num`, and `dev_run` are randomly generated and will need to be used in the run parameters for the transforms, as shown below.

The command `hmd transform run-transforms` will prompt you to select one or more Transforms and which parameters to run them with.
The command will provide default parameters based on the YAML configuration files in `./src/transforms`.
The transforms can all be run by accepting the default run parameters when prompted via ESC+ENTER.

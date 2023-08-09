import sys

from robot.api import FatalError
from robot.api.deco import keyword, library
import pexpect


@library
class NeuronSphereCLI:
    @keyword
    def run_transform(self, transform_name: str, run_params: str):
        child = pexpect.spawn(
            f"hmd transform run-transforms --transform {transform_name} --run-params '{run_params}'",
            encoding="utf-8",
        )
        child.logfile = sys.stderr

        child.expect("Running")
        child.expect("Transform Logs:")
        child.expect("Logs complete")
        index = child.expect(["successfully", "Failed", "hmd: error"])

        if index >= 1:
            raise FatalError(f"{transform_name} failed to run successfully")

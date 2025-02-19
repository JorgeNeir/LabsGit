package test

import (
	"testing"

	. "github.com/davivienda-colombia/davi-coe-terraform-test-lib/helpers"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"time"
)

func TestVirtualMachineIntegration(t *testing.T) {

	RunIntegrationTestSuite(t, completeVirtualMachineBuilderWithOptions, "Virtual Machine with basic features", func(suite *TestSuite, options *terraform.Options) {

		suite.RunTestCase("Validate Virtual Machine outputs", func(assert *Assert) {
			validateOutputsVirtualMachine(t, assert, options)
		})
		suite.RunTestCase("Validate resource destruction", func(assert *Assert) {
			delayDestroy(t)
		})
	})
}

func validateOutputsVirtualMachine(t *testing.T, assert *Assert, options *terraform.Options) {
	LogInfo(t, "Validating Virtual Machines outputs...")

	// Given
	parsedJsonVirtualMachine := ParseJsonTerraformOutput(t, options, "virtual_machine_name").Data().([]interface{})

	// When
	expectedVirtualMachine := []interface{}{"testvirtualmachine"}

	// Then
	assert.Equal(expectedVirtualMachine, parsedJsonVirtualMachine, "the Virtual Machine name should be `%s`!", expectedVirtualMachine)
}

func delayDestroy(t *testing.T) {
	LogInfo(t, "Delay for Destroy...")

	time.Sleep(30 * time.Second)

	LogInfo(t, "End of the Delay...")
}

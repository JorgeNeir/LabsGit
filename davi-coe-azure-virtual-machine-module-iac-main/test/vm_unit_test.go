package test

import (
	"testing"

	. "github.com/davivienda-colombia/davi-coe-terraform-test-lib/helpers"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

var (
	completeVirtualMachineBuilderWithOptions = NewOptionsBuilder().
		WithTerraformDir("./examples/vm_linux_test").
		WithDashedUniqId().
		WithoutVarsFile().
		WithTfVarsFile("integration.auto.tfvars")
)

func TestCompleteVirtualMachineUnit(t *testing.T) {

	RunUnitTestSuite(t, completeVirtualMachineBuilderWithOptions, "Complete Virtual Machine Unit Test Suite", func(suite *TestSuite, options *terraform.Options, plan *terraform.PlanStruct) {

		uniqId := options.Vars["unique_id"].(string)
		vmPlanKey := "module.backend.module.virtual_machine_linux.azurerm_linux_virtual_machine.this[0]"

		suite.RunTestCase("Validate Virtual Machine...", func(assert *Assert) {
			validateVirtualMachine(t, assert, plan, vmPlanKey, uniqId)
		})
	})
}

func validateVirtualMachine(t *testing.T, assert *Assert, plan *terraform.PlanStruct, vmPlanKey string, uniqId string) {
	LogInfo(t, "Validating Virtual Machine...")

	//Given
	virtualMachineObject := plan.ResourcePlannedValuesMap[vmPlanKey].AttributeValues
	location := virtualMachineObject["location"].(string)
	resourceGroupName := virtualMachineObject["resource_group_name"].(string)

	//When
	expectedLocation := "eastus2"
	expectedresourceGroupName := "rg_test" + uniqId

	//Then
	assert.Equal(expectedLocation, location, "Location should be equal to `%s`!", expectedLocation)
	assert.Equal(expectedresourceGroupName, resourceGroupName, "Location should be equal to `%s`!", expectedresourceGroupName)
}

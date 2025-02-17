package test

import (
	"testing"

	. "github.com/davivienda-colombia/davi-coe-terraform-test-lib/helpers"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

var (
	completeSqlBuilderWithOptions = NewOptionsBuilder().
		WithTerraformDir("./examples/sql_basic").
		WithDashedUniqId().
		WithoutVarsFile().
		WithTfVarsFile("integration.auto.tfvars")
)

func TestCompleteSqlUnit(t *testing.T) {

	RunUnitTestSuite(t, completeSqlBuilderWithOptions, "Complete Sql Unit Test Suite", func(suite *TestSuite, options *terraform.Options, plan *terraform.PlanStruct) {

		uniqId := options.Vars["unique_id"].(string)
		slPlanKey := "module.backend.module.sql_basic.azurerm_mssql_server.this[0]"

		suite.RunTestCase("Validate Sql...", func(assert *Assert) {
			validateSql(t, assert, plan, slPlanKey, uniqId)
		})
	})
}

func validateSql(t *testing.T, assert *Assert, plan *terraform.PlanStruct, slPlanKey string, uniqId string) {
	LogInfo(t, "Validating Sql...")

	//Given
	SqlObject := plan.ResourcePlannedValuesMap[slPlanKey].AttributeValues
	location := SqlObject["location"].(string)
	resourceGroupName := SqlObject["resource_group_name"].(string)

	//When
	expectedLocation := "eastus2"
	expectedresourceGroupName := "rg_test" + uniqId

	//Then
	assert.Equal(expectedLocation, location, "Location should be equal to `%s`!", expectedLocation)
	assert.Equal(expectedresourceGroupName, resourceGroupName, "Location should be equal to `%s`!", expectedresourceGroupName)
}

package test

import (
	"testing"

	. "github.com/davivienda-colombia/davi-coe-terraform-test-lib/helpers"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"time"
)

func TestSqlIntegration(t *testing.T) {

	RunIntegrationTestSuite(t, completeSqlBuilderWithOptions, "Sql with basic features", func(suite *TestSuite, options *terraform.Options) {

		uniqId := options.Vars["unique_id"].(string)
		suite.RunTestCase("Validate Sql outputs", func(assert *Assert) {
			validateOutputsSql(t, assert, options, uniqId)
		})
		suite.RunTestCase("Validate resource destruction", func(assert *Assert) {
			delayDestroy(t)
		})
	})
}

func validateOutputsSql(t *testing.T, assert *Assert, options *terraform.Options, uniqId string) {
	LogInfo(t, "Validating Sql outputs...")

	// Given
	parsedJsonSql := ParseJsonTerraformOutput(t, options, "mssql_database_id").Data().(string)

	// When
	expectedSql := "/subscriptions/dc894d04-698d-4f64-9e72-3b53114ebce9/resourceGroups/" + "rg_test" + uniqId + "/providers/Microsoft.Sql/servers/testserversql050922/databases/pruebasbasededatos"

	// Then
	assert.Equal(expectedSql, parsedJsonSql, "the Sql name should be `%s`!", expectedSql)
}

func delayDestroy(t *testing.T) {
	LogInfo(t, "Delay for Destroy...")

	time.Sleep(30 * time.Second)

	LogInfo(t, "End of the Delay...")
}

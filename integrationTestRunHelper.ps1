#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.when_something_executing_in_silverlight_throws_up_a_modal_MessageBox
#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.when_something_executing_in_silverlight_throws_up_a_debug_assertion_dialog
#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.ProviderTests.MSTest.when_testing_the_runner_with_MSTest_tests
#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.ProviderTests.MSTest.when_testing_the_runner_with_MSTest_tests_filtered_by_certain_methods
#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.ProviderTests.NUnit.when_testing_the_runner_with_NUnit_tests
#& 'C:\Program Files\NUnit 2.5.3\bin\net-2.0\nunit-console.exe' /noshadow .\src\StatLight.IntegrationTests\StatLight.IntegrationTests.nunit /run StatLight.IntegrationTests.ProviderTests.NUnit.when_testing_the_runner_with_NUnit_tests_filtered_by_certain_methods

.\src\build\bin\Debug\StatLight.exe "-x=.\src\StatLight.IntegrationTests.Silverlight.UnitDriven\Bin\Debug\StatLight.IntegrationTests.Silverlight.UnitDriven.xap" -b
#& "src\build\bin\Debug\StatLight.exe" "-x=.\src\StatLight.Client.Tests\Bin\Debug\StatLight.Client.Tests.xap" "-o=MSTest" "-b" 

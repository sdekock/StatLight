﻿using System.Collections.Generic;
using NUnit.Framework;
using StatLight.Core.UnitTestProviders;
using StatLight.Core.WebServer;

namespace StatLight.IntegrationTests.ProviderTests.NUnit
{
    [TestFixture]
    public class when_testing_the_runner_with_NUnit_tests_filtered_by_certain_methods
        : filtered_tests____
    {
        private TestRunConfiguration _testRunConfiguration;

        protected override TestRunConfiguration TestRunConfiguration
        {
            get { return _testRunConfiguration; }
        }

        protected override void Before_all_tests()
        {
            PathToIntegrationTestXap = TestXapFileLocations.NUnit;
            const string namespaceToTestFrom = "StatLight.IntegrationTests.Silverlight.";

            NormalClassTestName = "NUnitTests";
            NestedClassTestName = "NUnitTests+NUnitNestedClassTests";

            _testRunConfiguration = new TestRunConfiguration
                                        {
                                            TagFilter = string.Empty,
                                            UnitTestProviderType = UnitTestProviderType.NUnit,
                                            MethodsToTest = new List<string>
                                                                {
		                		                                    namespaceToTestFrom + NormalClassTestName + ".this_should_be_a_passing_test",
		                		                                    namespaceToTestFrom + NestedClassTestName + ".this_should_be_a_passing_test",
			                        		                	}
                                        };

            base.Before_all_tests();

            TestResults = Runner.Run();
        }
    }
}
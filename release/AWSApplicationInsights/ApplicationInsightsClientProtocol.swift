// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon CloudWatch Application Insights Amazon CloudWatch Application Insights is a service that helps you detect common problems with your applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors.
public protocol ApplicationInsightsClientProtocol {
    /// Adds an application that is created from a resource group.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates a custom component by grouping similar standalone instances to monitor.
    func createComponent(input: CreateComponentInput) async throws -> CreateComponentOutputResponse
    /// Adds an log pattern to a LogPatternSet.
    func createLogPattern(input: CreateLogPatternInput) async throws -> CreateLogPatternOutputResponse
    /// Removes the specified application from monitoring. Does not delete the application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    func deleteComponent(input: DeleteComponentInput) async throws -> DeleteComponentOutputResponse
    /// Removes the specified log pattern from a LogPatternSet.
    func deleteLogPattern(input: DeleteLogPatternInput) async throws -> DeleteLogPatternOutputResponse
    /// Describes the application.
    func describeApplication(input: DescribeApplicationInput) async throws -> DescribeApplicationOutputResponse
    /// Describes a component and lists the resources that are grouped together in a component.
    func describeComponent(input: DescribeComponentInput) async throws -> DescribeComponentOutputResponse
    /// Describes the monitoring configuration of the component.
    func describeComponentConfiguration(input: DescribeComponentConfigurationInput) async throws -> DescribeComponentConfigurationOutputResponse
    /// Describes the recommended monitoring configuration of the component.
    func describeComponentConfigurationRecommendation(input: DescribeComponentConfigurationRecommendationInput) async throws -> DescribeComponentConfigurationRecommendationOutputResponse
    /// Describe a specific log pattern from a LogPatternSet.
    func describeLogPattern(input: DescribeLogPatternInput) async throws -> DescribeLogPatternOutputResponse
    /// Describes an anomaly or error with the application.
    func describeObservation(input: DescribeObservationInput) async throws -> DescribeObservationOutputResponse
    /// Describes an application problem.
    func describeProblem(input: DescribeProblemInput) async throws -> DescribeProblemOutputResponse
    /// Describes the anomalies or errors associated with the problem.
    func describeProblemObservations(input: DescribeProblemObservationsInput) async throws -> DescribeProblemObservationsOutputResponse
    /// Lists the IDs of the applications that you are monitoring.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists the auto-grouped, standalone, and custom components of the application.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutputResponse
    /// Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:
    ///
    /// * INFO: creating a new alarm or updating an alarm threshold.
    ///
    /// * WARN: alarm not created due to insufficient data points used to predict thresholds.
    ///
    /// * ERROR: alarm not created due to permission errors or exceeding quotas.
    func listConfigurationHistory(input: ListConfigurationHistoryInput) async throws -> ListConfigurationHistoryOutputResponse
    /// Lists the log patterns in the specific log LogPatternSet.
    func listLogPatterns(input: ListLogPatternsInput) async throws -> ListLogPatternsOutputResponse
    /// Lists the log pattern sets in the specific application.
    func listLogPatternSets(input: ListLogPatternSetsInput) async throws -> ListLogPatternSetsOutputResponse
    /// Lists the problems with your application.
    func listProblems(input: ListProblemsInput) async throws -> ListProblemsOutputResponse
    /// Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Remove one or more tags (keys and values) from a specified application.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the application.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Updates the custom component name and/or the list of resources that make up the component.
    func updateComponent(input: UpdateComponentInput) async throws -> UpdateComponentOutputResponse
    /// Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation.
    func updateComponentConfiguration(input: UpdateComponentConfigurationInput) async throws -> UpdateComponentConfigurationOutputResponse
    /// Adds a log pattern to a LogPatternSet.
    func updateLogPattern(input: UpdateLogPatternInput) async throws -> UpdateLogPatternOutputResponse
}

public enum ApplicationInsightsClientTypes {}

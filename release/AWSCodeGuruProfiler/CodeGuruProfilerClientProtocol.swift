// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This section provides documentation for the Amazon CodeGuru Profiler API operations. Amazon CodeGuru Profiler collects runtime performance data from your live applications, and provides recommendations that can help you fine-tune your application performance. Using machine learning algorithms, CodeGuru Profiler can help you find your most expensive lines of code and suggest ways you can improve efficiency and remove CPU bottlenecks. Amazon CodeGuru Profiler provides different visualizations of profiling data to help you identify what code is running on the CPU, see how much time is consumed, and suggest ways to reduce CPU utilization. Amazon CodeGuru Profiler currently supports applications written in all Java virtual machine (JVM) languages and Python. While CodeGuru Profiler supports both visualizations and recommendations for applications written in Java, it can also generate visualizations and a subset of recommendations for applications written in other JVM languages and Python. For more information, see [What is Amazon CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html) in the Amazon CodeGuru Profiler User Guide.
public protocol CodeGuruProfilerClientProtocol {
    /// Add up to 2 anomaly notifications channels for a profiling group.
    func addNotificationChannels(input: AddNotificationChannelsInput, completion: @escaping (ClientRuntime.SdkResult<AddNotificationChannelsOutputResponse, AddNotificationChannelsOutputError>) -> Void)
    /// Returns the time series of values for a requested list of frame metrics from a time period.
    func batchGetFrameMetricData(input: BatchGetFrameMetricDataInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetFrameMetricDataOutputResponse, BatchGetFrameMetricDataOutputError>) -> Void)
    /// Used by profiler agents to report their current state and to receive remote configuration updates. For example, ConfigureAgent can be used to tell an agent whether to profile or not and for how long to return profiling data.
    func configureAgent(input: ConfigureAgentInput, completion: @escaping (ClientRuntime.SdkResult<ConfigureAgentOutputResponse, ConfigureAgentOutputError>) -> Void)
    /// Creates a profiling group.
    func createProfilingGroup(input: CreateProfilingGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateProfilingGroupOutputResponse, CreateProfilingGroupOutputError>) -> Void)
    /// Deletes a profiling group.
    func deleteProfilingGroup(input: DeleteProfilingGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProfilingGroupOutputResponse, DeleteProfilingGroupOutputError>) -> Void)
    /// Returns a [ProfilingGroupDescription](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html) object that contains information about the requested profiling group.
    func describeProfilingGroup(input: DescribeProfilingGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProfilingGroupOutputResponse, DescribeProfilingGroupOutputError>) -> Void)
    /// Returns a list of [FindingsReportSummary](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html) objects that contain analysis results for all profiling groups in your AWS account.
    func getFindingsReportAccountSummary(input: GetFindingsReportAccountSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetFindingsReportAccountSummaryOutputResponse, GetFindingsReportAccountSummaryOutputError>) -> Void)
    /// Get the current configuration for anomaly notifications for a profiling group.
    func getNotificationConfiguration(input: GetNotificationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetNotificationConfigurationOutputResponse, GetNotificationConfigurationOutputError>) -> Void)
    /// Returns the JSON-formatted resource-based policy on a profiling group.
    func getPolicy(input: GetPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetPolicyOutputResponse, GetPolicyOutputError>) -> Void)
    /// Gets the aggregated profile of a profiling group for a specified time range. Amazon CodeGuru Profiler collects posted agent profiles for a profiling group into aggregated profiles. Because aggregated profiles expire over time GetProfile is not idempotent. Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: startTime, endTime, period. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only period, the latest aggregated profile is returned. Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see [AggregatedProfileTime](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html). The aggregated profile's aggregation period determines how long
    ///
    ///
    /// it is retained by CodeGuru Profiler.
    ///
    /// * If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days.
    ///
    /// * If the aggregation period is 1 hour, the aggregated profile is retained for 60 days.
    ///
    /// * If the aggregation period is 1 day, the aggregated profile is retained for 3 years.
    ///
    ///
    /// There are two use cases for calling GetProfile.
    ///
    /// * If you want to return an aggregated profile that already exists, use [ListProfileTimes](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html) to view the time ranges of existing aggregated profiles. Use them in a GetProfile request to return a specific, existing aggregated profile.
    ///
    /// * If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned.
    func getProfile(input: GetProfileInput, completion: @escaping (ClientRuntime.SdkResult<GetProfileOutputResponse, GetProfileOutputError>) -> Void)
    /// Returns a list of [Recommendation](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html) objects that contain recommendations for a profiling group for a given time period. A list of [Anomaly](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html) objects that contains details about anomalies detected in the profiling group for the same time period is also returned.
    func getRecommendations(input: GetRecommendationsInput, completion: @escaping (ClientRuntime.SdkResult<GetRecommendationsOutputResponse, GetRecommendationsOutputError>) -> Void)
    /// List the available reports for a given profiling group and time range.
    func listFindingsReports(input: ListFindingsReportsInput, completion: @escaping (ClientRuntime.SdkResult<ListFindingsReportsOutputResponse, ListFindingsReportsOutputError>) -> Void)
    /// Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    func listProfileTimes(input: ListProfileTimesInput, completion: @escaping (ClientRuntime.SdkResult<ListProfileTimesOutputResponse, ListProfileTimesOutputError>) -> Void)
    /// Returns a list of profiling groups. The profiling groups are returned as [ProfilingGroupDescription](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html) objects.
    func listProfilingGroups(input: ListProfilingGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListProfilingGroupsOutputResponse, ListProfilingGroupsOutputError>) -> Void)
    /// Returns a list of the tags that are assigned to a specified resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Submits profiling data to an aggregated profile of a profiling group. To get an aggregated profile that is created with this profiling data, use [GetProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).
    func postAgentProfile(input: PostAgentProfileInput, completion: @escaping (ClientRuntime.SdkResult<PostAgentProfileOutputResponse, PostAgentProfileOutputError>) -> Void)
    /// Adds permissions to a profiling group's resource-based policy that are provided using an action group. If a profiling group doesn't have a resource-based policy, one is created for it using the permissions in the action group and the roles and users in the principals parameter. The one supported action group that can be added is agentPermission which grants ConfigureAgent and PostAgent permissions. For more information, see [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html) in the Amazon CodeGuru Profiler User Guide, [ConfigureAgent](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html), and [PostAgentProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html). The first time you call PutPermission on a profiling group, do not specify a revisionId because it doesn't have a resource-based policy. Subsequent calls must provide a revisionId to specify which revision of the resource-based policy to add the permissions to. The response contains the profiling group's JSON-formatted resource policy.
    func putPermission(input: PutPermissionInput, completion: @escaping (ClientRuntime.SdkResult<PutPermissionOutputResponse, PutPermissionOutputError>) -> Void)
    /// Remove one anomaly notifications channel for a profiling group.
    func removeNotificationChannel(input: RemoveNotificationChannelInput, completion: @escaping (ClientRuntime.SdkResult<RemoveNotificationChannelOutputResponse, RemoveNotificationChannelOutputError>) -> Void)
    /// Removes permissions from a profiling group's resource-based policy that are provided using an action group. The one supported action group that can be removed is agentPermission which grants ConfigureAgent and PostAgent permissions. For more information, see [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html) in the Amazon CodeGuru Profiler User Guide, [ConfigureAgent](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html), and [PostAgentProfile](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).
    func removePermission(input: RemovePermissionInput, completion: @escaping (ClientRuntime.SdkResult<RemovePermissionOutputResponse, RemovePermissionOutputError>) -> Void)
    /// Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is useful or not.
    func submitFeedback(input: SubmitFeedbackInput, completion: @escaping (ClientRuntime.SdkResult<SubmitFeedbackOutputResponse, SubmitFeedbackOutputError>) -> Void)
    /// Use to assign one or more tags to a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Use to remove one or more tags from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates a profiling group.
    func updateProfilingGroup(input: UpdateProfilingGroupInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProfilingGroupOutputResponse, UpdateProfilingGroupOutputError>) -> Void)
}

public enum CodeGuruProfilerClientTypes {}

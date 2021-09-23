// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS Step Functions</fullname>
///          AWS Step Functions is a service that lets you coordinate the components of distributed applications
///       and microservices using visual workflows.
///          You can use Step Functions to build applications from individual components, each of which performs
///       a discrete function, or task, allowing you to scale and change
///       applications quickly. Step Functions provides a console that helps visualize the components of your
///       application as a series of steps. Step Functions automatically triggers and tracks each step, and
///       retries steps when there are errors, so your application executes predictably and in the right
///       order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any
///       issues.
///          Step Functions manages operations and underlying infrastructure to ensure your application is
///       available at any scale. You can run tasks on AWS, your own servers, or any system that has
///       access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API.
///       For more information about Step Functions, see the
///                <a href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS Step Functions Developer Guide
///             .
public protocol SfnClientProtocol {
    /// Creates an activity. An activity is a task that you write in any programming language and
    ///       host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the
    ///         GetActivityTask API action and respond using SendTask* API
    ///       actions. This function lets Step Functions know the existence of your activity and returns an
    ///       identifier for use in a state machine and when polling from the activity.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    ///
    ///
    ///                CreateActivity is an idempotent API. Subsequent requests won’t create a
    ///         duplicate resource if it was already created. CreateActivity's idempotency
    ///         check is based on the activity name. If a following request has different
    ///           tags values, Step Functions will ignore these differences and treat it as an
    ///         idempotent request of the previous. In this case, tags will not be updated,
    ///         even if they are different.
    ///
    func createActivity(input: CreateActivityInput, completion: @escaping (ClientRuntime.SdkResult<CreateActivityOutputResponse, CreateActivityOutputError>) -> Void)
    /// Creates a state machine. A state machine consists of a collection of states that can do
    ///       work (Task states), determine to which states to transition next
    ///         (Choice states), stop an execution with an error (Fail states),
    ///       and so on. State machines are specified using a JSON-based, structured language. For more
    ///       information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States
    ///         Language in the AWS Step Functions User Guide.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    ///
    ///
    ///                CreateStateMachine is an idempotent API. Subsequent requests won’t create a
    ///         duplicate resource if it was already created. CreateStateMachine's idempotency
    ///         check is based on the state machine name, definition,
    ///           type, LoggingConfiguration and TracingConfiguration. If a following request has a
    ///         different roleArn or tags, Step Functions will ignore these differences and
    ///         treat it as an idempotent request of the previous. In this case, roleArn and
    ///           tags will not be updated, even if they are different.
    ///
    func createStateMachine(input: CreateStateMachineInput, completion: @escaping (ClientRuntime.SdkResult<CreateStateMachineOutputResponse, CreateStateMachineOutputError>) -> Void)
    /// Deletes an activity.
    func deleteActivity(input: DeleteActivityInput, completion: @escaping (ClientRuntime.SdkResult<DeleteActivityOutputResponse, DeleteActivityOutputError>) -> Void)
    /// Deletes a state machine. This is an asynchronous operation: It sets the state machine's
    ///       status to DELETING and begins the deletion process.
    ///
    ///             For EXPRESSstate machines, the deletion will happen eventually (usually
    ///         less than a minute). Running executions may emit logs after DeleteStateMachine
    ///         API is called.
    ///
    func deleteStateMachine(input: DeleteStateMachineInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStateMachineOutputResponse, DeleteStateMachineOutputError>) -> Void)
    /// Describes an activity.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    func describeActivity(input: DescribeActivityInput, completion: @escaping (ClientRuntime.SdkResult<DescribeActivityOutputResponse, DescribeActivityOutputError>) -> Void)
    /// Describes an execution.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    ///          This API action is not supported by EXPRESS state machines.
    func describeExecution(input: DescribeExecutionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeExecutionOutputResponse, DescribeExecutionOutputError>) -> Void)
    /// Describes a state machine.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    func describeStateMachine(input: DescribeStateMachineInput, completion: @escaping (ClientRuntime.SdkResult<DescribeStateMachineOutputResponse, DescribeStateMachineOutputError>) -> Void)
    /// Describes the state machine associated with a specific execution.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    ///          This API action is not supported by EXPRESS state machines.
    func describeStateMachineForExecution(input: DescribeStateMachineForExecutionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeStateMachineForExecutionOutputResponse, DescribeStateMachineForExecutionOutputError>) -> Void)
    /// Used by workers to retrieve a task (with the specified activity ARN) which has been
    ///       scheduled for execution by a running state machine. This initiates a long poll, where the
    ///       service holds the HTTP connection open and responds as soon as a task becomes available (i.e.
    ///       an execution of a task of this type is needed.) The maximum time the service holds on to the
    ///       request before responding is 60 seconds. If no task is available within 60 seconds, the poll
    ///       returns a taskToken with a null string.
    ///
    ///             Workers should set their client side socket timeout to at least 65 seconds (5 seconds
    ///         higher than the maximum time the service may hold the poll request).
    ///             Polling with GetActivityTask can cause latency in some implementations. See
    ///           <a href="https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html">Avoid
    ///           Latency When Polling for Activity Tasks in the Step Functions Developer Guide.
    ///
    func getActivityTask(input: GetActivityTaskInput, completion: @escaping (ClientRuntime.SdkResult<GetActivityTaskOutputResponse, GetActivityTaskOutputError>) -> Void)
    /// Returns the history of the specified execution as a list of events. By default, the
    ///       results are returned in ascending order of the timeStamp of the events. Use the
    ///         reverseOrder parameter to get the latest events first.
    ///          If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
    ///          This API action is not supported by EXPRESS state machines.
    func getExecutionHistory(input: GetExecutionHistoryInput, completion: @escaping (ClientRuntime.SdkResult<GetExecutionHistoryOutputResponse, GetExecutionHistoryOutputError>) -> Void)
    /// Lists the existing activities.
    ///          If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    func listActivities(input: ListActivitiesInput, completion: @escaping (ClientRuntime.SdkResult<ListActivitiesOutputResponse, ListActivitiesOutputError>) -> Void)
    /// Lists the executions of a state machine that meet the filtering criteria. Results are
    ///       sorted by time, with the most recent execution first.
    ///          If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    ///          This API action is not supported by EXPRESS state machines.
    func listExecutions(input: ListExecutionsInput, completion: @escaping (ClientRuntime.SdkResult<ListExecutionsOutputResponse, ListExecutionsOutputError>) -> Void)
    /// Lists the existing state machines.
    ///          If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
    ///
    ///             This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    ///
    func listStateMachines(input: ListStateMachinesInput, completion: @escaping (ClientRuntime.SdkResult<ListStateMachinesOutputResponse, ListStateMachinesOutputError>) -> Void)
    /// List tags for a given resource.
    ///          Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback
    ///       pattern to report that the task identified by the taskToken failed.
    func sendTaskFailure(input: SendTaskFailureInput, completion: @escaping (ClientRuntime.SdkResult<SendTaskFailureOutputResponse, SendTaskFailureOutputError>) -> Void)
    /// Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback
    ///       pattern to report to Step Functions that the task represented by the specified
    ///         taskToken is still making progress. This action resets the
    ///         Heartbeat clock. The Heartbeat threshold is specified in the state
    ///       machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself
    ///       create an event in the execution history. However, if the task times out, the execution
    ///       history contains an ActivityTimedOut entry for activities, or a
    ///         TaskTimedOut entry for for tasks using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run or
    ///         <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback
    ///       pattern.
    ///
    ///             The Timeout of a task, defined in the state machine's Amazon States Language definition, is
    ///         its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval
    ///         for heartbeats.
    ///
    func sendTaskHeartbeat(input: SendTaskHeartbeatInput, completion: @escaping (ClientRuntime.SdkResult<SendTaskHeartbeatOutputResponse, SendTaskHeartbeatOutputError>) -> Void)
    /// Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback
    ///       pattern to report that the task identified by the taskToken completed
    ///       successfully.
    func sendTaskSuccess(input: SendTaskSuccessInput, completion: @escaping (ClientRuntime.SdkResult<SendTaskSuccessOutputResponse, SendTaskSuccessOutputError>) -> Void)
    /// Starts a state machine execution.
    ///
    ///
    ///                StartExecution is idempotent. If StartExecution is called with
    ///         the same name and input as a running execution, the call will succeed and return the same
    ///         response as the original request. If the execution is closed or if the input is different,
    ///         it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90
    ///         days.
    ///
    func startExecution(input: StartExecutionInput, completion: @escaping (ClientRuntime.SdkResult<StartExecutionOutputResponse, StartExecutionOutputError>) -> Void)
    /// Starts a Synchronous Express state machine execution.
    func startSyncExecution(input: StartSyncExecutionInput, completion: @escaping (ClientRuntime.SdkResult<StartSyncExecutionOutputResponse, StartSyncExecutionOutputError>) -> Void)
    /// Stops an execution.
    ///          This API action is not supported by EXPRESS state machines.
    func stopExecution(input: StopExecutionInput, completion: @escaping (ClientRuntime.SdkResult<StopExecutionOutputResponse, StopExecutionOutputError>) -> Void)
    /// Add a tag to a Step Functions resource.
    ///          An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    ///       Cost Allocation Tags in the AWS Billing and Cost Management User
    ///         Guide, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    ///           Tags.
    ///          Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Remove a tag from a Step Functions resource
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an existing state machine by modifying its definition,
    ///         roleArn, or loggingConfiguration. Running executions will continue
    ///       to use the previous definition and roleArn. You must include at
    ///       least one of definition or roleArn or you will receive a
    ///         MissingRequiredParameter error.
    ///
    ///             All StartExecution calls within a few seconds will use the updated
    ///           definition and roleArn. Executions started immediately after
    ///         calling UpdateStateMachine may use the previous state machine
    ///           definition and roleArn.
    ///
    func updateStateMachine(input: UpdateStateMachineInput, completion: @escaping (ClientRuntime.SdkResult<UpdateStateMachineOutputResponse, UpdateStateMachineOutputError>) -> Void)
}

public enum SfnClientTypes {}

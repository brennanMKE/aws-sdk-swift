// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>
public struct WorkflowExecutionStartedEventAttributes: Equatable {
    /// <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
    ///       <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
    ///          <p>The supported child policies are:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>TERMINATE</code> – The child executions are terminated.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    ///   execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    ///   to take appropriate actions when it receives an execution history with this event.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    ///             </li>
    ///          </ul>
    public let childPolicy: ChildPolicy?
    /// <p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it
    ///       contains the <code>runId</code> of the previous workflow execution that was closed and continued as this
    ///       execution.</p>
    public let continuedExecutionRunId: String?
    /// <p>The maximum duration for this workflow execution.</p>
    ///          <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    public let executionStartToCloseTimeout: String?
    /// <p>The input provided to the workflow execution.</p>
    public let input: String?
    /// <p>The IAM role attached to the workflow execution.</p>
    public let lambdaRole: String?
    /// <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    ///       <code>StartChildWorkflowExecution</code>
    ///             <a>Decision</a> to start this workflow execution. The source event with
    ///       this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
    ///   events leading up to this event.</p>
    public let parentInitiatedEventId: Int
    /// <p>The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.</p>
    public let parentWorkflowExecution: WorkflowExecution?
    /// <p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>
    public let tagList: [String]?
    /// <p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>
    public let taskList: TaskList?
    /// <p>The priority of the decision tasks in the workflow execution.</p>
    public let taskPriority: String?
    /// <p>The maximum duration of decision tasks for this workflow type.</p>
    ///          <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    public let taskStartToCloseTimeout: String?
    /// <p>The workflow type of this execution.</p>
    public let workflowType: WorkflowType?

    public init (
        childPolicy: ChildPolicy? = nil,
        continuedExecutionRunId: String? = nil,
        executionStartToCloseTimeout: String? = nil,
        input: String? = nil,
        lambdaRole: String? = nil,
        parentInitiatedEventId: Int = 0,
        parentWorkflowExecution: WorkflowExecution? = nil,
        tagList: [String]? = nil,
        taskList: TaskList? = nil,
        taskPriority: String? = nil,
        taskStartToCloseTimeout: String? = nil,
        workflowType: WorkflowType? = nil
    )
    {
        self.childPolicy = childPolicy
        self.continuedExecutionRunId = continuedExecutionRunId
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.parentInitiatedEventId = parentInitiatedEventId
        self.parentWorkflowExecution = parentWorkflowExecution
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowType = workflowType
    }
}

extension WorkflowExecutionStartedEventAttributes: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkflowExecutionStartedEventAttributes(childPolicy: \(String(describing: childPolicy)), continuedExecutionRunId: \(String(describing: continuedExecutionRunId)), executionStartToCloseTimeout: \(String(describing: executionStartToCloseTimeout)), input: \(String(describing: input)), lambdaRole: \(String(describing: lambdaRole)), parentInitiatedEventId: \(String(describing: parentInitiatedEventId)), parentWorkflowExecution: \(String(describing: parentWorkflowExecution)), tagList: \(String(describing: tagList)), taskList: \(String(describing: taskList)), taskPriority: \(String(describing: taskPriority)), taskStartToCloseTimeout: \(String(describing: taskStartToCloseTimeout)), workflowType: \(String(describing: workflowType)))"}
}
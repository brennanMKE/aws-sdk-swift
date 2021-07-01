// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You started an assessment run, but one of the instances is already participating in
///          another assessment run.</p>
public struct AgentsAlreadyRunningAssessmentException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p></p>
    public var agents: [AgentAlreadyRunningAssessment]?
    /// <p></p>
    public var agentsTruncated: Bool?
    /// <p>You can immediately retry your request.</p>
    public var canRetry: Bool?
    /// <p>Details of the exception error.</p>
    public var message: String?

    public init (
        agents: [AgentAlreadyRunningAssessment]? = nil,
        agentsTruncated: Bool? = nil,
        canRetry: Bool? = nil,
        message: String? = nil
    )
    {
        self.agents = agents
        self.agentsTruncated = agentsTruncated
        self.canRetry = canRetry
        self.message = message
    }
}

extension AgentsAlreadyRunningAssessmentException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AgentsAlreadyRunningAssessmentException(agents: \(String(describing: agents)), agentsTruncated: \(String(describing: agentsTruncated)), canRetry: \(String(describing: canRetry)), message: \(String(describing: message)))"}
}
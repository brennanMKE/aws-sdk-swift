// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchCreateDelegationByAssessmentOutputResponse: Equatable {
    /// <p>
    ///          The delegations associated with the assessment.
    ///       </p>
    public let delegations: [Delegation]?
    /// <p>
    ///          A list of errors returned by the <code>BatchCreateDelegationByAssessment</code> API.
    ///       </p>
    public let errors: [BatchCreateDelegationByAssessmentError]?

    public init (
        delegations: [Delegation]? = nil,
        errors: [BatchCreateDelegationByAssessmentError]? = nil
    )
    {
        self.delegations = delegations
        self.errors = errors
    }
}

extension BatchCreateDelegationByAssessmentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchCreateDelegationByAssessmentOutputResponse(delegations: \(String(describing: delegations)), errors: \(String(describing: errors)))"}
}
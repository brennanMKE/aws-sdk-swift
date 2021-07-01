// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output from the ListPolicyVersions operation.</p>
public struct ListPolicyVersionsOutputResponse: Equatable {
    /// <p>The policy versions.</p>
    public let policyVersions: [PolicyVersion]?

    public init (
        policyVersions: [PolicyVersion]? = nil
    )
    {
        self.policyVersions = policyVersions
    }
}

extension ListPolicyVersionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPolicyVersionsOutputResponse(policyVersions: \(String(describing: policyVersions)))"}
}
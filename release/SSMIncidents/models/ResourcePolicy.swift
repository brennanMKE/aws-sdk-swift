// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The resource policy that allows Incident Manager to perform actions on resources on your behalf.</p>
public struct ResourcePolicy: Equatable {
    /// <p>The JSON blob that describes the policy.</p>
    public let policyDocument: String?
    /// <p>The ID of the resource policy.</p>
    public let policyId: String?
    /// <p>The Region that policy allows resources to be used in.</p>
    public let ramResourceShareRegion: String?

    public init (
        policyDocument: String? = nil,
        policyId: String? = nil,
        ramResourceShareRegion: String? = nil
    )
    {
        self.policyDocument = policyDocument
        self.policyId = policyId
        self.ramResourceShareRegion = ramResourceShareRegion
    }
}

extension ResourcePolicy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourcePolicy(policyDocument: \(String(describing: policyDocument)), policyId: \(String(describing: policyId)), ramResourceShareRegion: \(String(describing: ramResourceShareRegion)))"}
}
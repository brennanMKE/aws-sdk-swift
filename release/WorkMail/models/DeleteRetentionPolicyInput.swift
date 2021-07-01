// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteRetentionPolicyInput: Equatable {
    /// <p>The retention policy ID.</p>
    public let id: String?
    /// <p>The organization ID.</p>
    public let organizationId: String?

    public init (
        id: String? = nil,
        organizationId: String? = nil
    )
    {
        self.id = id
        self.organizationId = organizationId
    }
}

extension DeleteRetentionPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteRetentionPolicyInput(id: \(String(describing: id)), organizationId: \(String(describing: organizationId)))"}
}
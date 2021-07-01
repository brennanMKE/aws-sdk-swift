// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateAddressOutputResponse: Equatable {
    /// <p>[EC2-VPC] The ID that represents the association of the Elastic IP address with an instance.</p>
    public let associationId: String?

    public init (
        associationId: String? = nil
    )
    {
        self.associationId = associationId
    }
}

extension AssociateAddressOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateAddressOutputResponse(associationId: \(String(describing: associationId)))"}
}
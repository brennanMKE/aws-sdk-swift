// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateResourceShareInput: Equatable {
    /// <p>Indicates whether principals outside your AWS organization can be associated with a resource share.</p>
    public let allowExternalPrincipals: Bool?
    /// <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    public let clientToken: String?
    /// <p>The name of the resource share.</p>
    public let name: String?
    /// <p>The Amazon Resource Name (ARN) of the resource share.</p>
    public let resourceShareArn: String?

    public init (
        allowExternalPrincipals: Bool? = nil,
        clientToken: String? = nil,
        name: String? = nil,
        resourceShareArn: String? = nil
    )
    {
        self.allowExternalPrincipals = allowExternalPrincipals
        self.clientToken = clientToken
        self.name = name
        self.resourceShareArn = resourceShareArn
    }
}

extension UpdateResourceShareInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateResourceShareInput(allowExternalPrincipals: \(String(describing: allowExternalPrincipals)), clientToken: \(String(describing: clientToken)), name: \(String(describing: name)), resourceShareArn: \(String(describing: resourceShareArn)))"}
}
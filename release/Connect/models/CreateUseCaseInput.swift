// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateUseCaseInput: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The identifier for the AppIntegration association.</p>
    public let integrationAssociationId: String?
    /// <p>One or more tags.</p>
    public let tags: [String:String]?
    /// <p>The type of use case to associate to the AppIntegration association. Each AppIntegration
    ///    association can have only one of each use case type.</p>
    public let useCaseType: UseCaseType?

    public init (
        instanceId: String? = nil,
        integrationAssociationId: String? = nil,
        tags: [String:String]? = nil,
        useCaseType: UseCaseType? = nil
    )
    {
        self.instanceId = instanceId
        self.integrationAssociationId = integrationAssociationId
        self.tags = tags
        self.useCaseType = useCaseType
    }
}

extension CreateUseCaseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateUseCaseInput(instanceId: \(String(describing: instanceId)), integrationAssociationId: \(String(describing: integrationAssociationId)), tags: \(String(describing: tags)), useCaseType: \(String(describing: useCaseType)))"}
}
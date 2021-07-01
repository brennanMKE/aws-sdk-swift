// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResolverRuleInput: Equatable {
    /// <p>The ID of the Resolver rule that you want to get information about.</p>
    public let resolverRuleId: String?

    public init (
        resolverRuleId: String? = nil
    )
    {
        self.resolverRuleId = resolverRuleId
    }
}

extension GetResolverRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResolverRuleInput(resolverRuleId: \(String(describing: resolverRuleId)))"}
}
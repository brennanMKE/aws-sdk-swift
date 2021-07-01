// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutLifecycleConfigurationOutputResponse: Equatable {
    /// <p>An array of lifecycle management policies. Currently, EFS supports a maximum of one
    ///       policy per file system.</p>
    public let lifecyclePolicies: [LifecyclePolicy]?

    public init (
        lifecyclePolicies: [LifecyclePolicy]? = nil
    )
    {
        self.lifecyclePolicies = lifecyclePolicies
    }
}

extension PutLifecycleConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutLifecycleConfigurationOutputResponse(lifecyclePolicies: \(String(describing: lifecyclePolicies)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSecurityConfigurationOutputResponse: Equatable {
    /// <p>The requested security configuration.</p>
    public let securityConfiguration: SecurityConfiguration?

    public init (
        securityConfiguration: SecurityConfiguration? = nil
    )
    {
        self.securityConfiguration = securityConfiguration
    }
}

extension GetSecurityConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSecurityConfigurationOutputResponse(securityConfiguration: \(String(describing: securityConfiguration)))"}
}
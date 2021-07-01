// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The representation of an organization.</p>
public struct OrganizationSummary: Equatable {
    /// <p>The alias associated with the organization.</p>
    public let alias: String?
    /// <p>The default email domain associated with the organization.</p>
    public let defaultMailDomain: String?
    /// <p>The error message associated with the organization. It is only present if unexpected
    ///          behavior has occurred with regards to the organization. It provides insight or solutions
    ///          regarding unexpected behavior.</p>
    public let errorMessage: String?
    /// <p>The identifier associated with the organization.</p>
    public let organizationId: String?
    /// <p>The state associated with the organization.</p>
    public let state: String?

    public init (
        alias: String? = nil,
        defaultMailDomain: String? = nil,
        errorMessage: String? = nil,
        organizationId: String? = nil,
        state: String? = nil
    )
    {
        self.alias = alias
        self.defaultMailDomain = defaultMailDomain
        self.errorMessage = errorMessage
        self.organizationId = organizationId
        self.state = state
    }
}

extension OrganizationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OrganizationSummary(alias: \(String(describing: alias)), defaultMailDomain: \(String(describing: defaultMailDomain)), errorMessage: \(String(describing: errorMessage)), organizationId: \(String(describing: organizationId)), state: \(String(describing: state)))"}
}
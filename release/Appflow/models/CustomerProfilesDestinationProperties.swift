// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       The properties that are applied when Amazon Connect Customer Profiles is used as a destination.
///     </p>
public struct CustomerProfilesDestinationProperties: Equatable {
    /// <p>
    ///       The unique name of the Amazon Connect Customer Profiles domain.
    ///     </p>
    public let domainName: String?
    /// <p>
    ///       The object specified in the Amazon Connect Customer Profiles flow destination.
    ///     </p>
    public let objectTypeName: String?

    public init (
        domainName: String? = nil,
        objectTypeName: String? = nil
    )
    {
        self.domainName = domainName
        self.objectTypeName = objectTypeName
    }
}

extension CustomerProfilesDestinationProperties: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CustomerProfilesDestinationProperties(domainName: \(String(describing: domainName)), objectTypeName: \(String(describing: objectTypeName)))"}
}
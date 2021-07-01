// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The metadata for a public registry.</p>
public struct RegistryCatalogData: Equatable {
    /// <p>The display name for a public registry. This appears on the Amazon ECR Public Gallery.</p>
    ///          <important>
    ///             <p>Only accounts that have the verified account badge can have a registry display
    ///             name.</p>
    ///          </important>
    public let displayName: String?

    public init (
        displayName: String? = nil
    )
    {
        self.displayName = displayName
    }
}

extension RegistryCatalogData: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegistryCatalogData(displayName: \(String(describing: displayName)))"}
}
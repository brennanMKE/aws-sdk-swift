// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       Container for request parameters to
///       <code>
///         <a>DissociatePackage</a>
///       </code>
///       operation.
///     </p>
public struct DissociatePackageInput: Equatable {
    /// <p>Name of the domain that you want to associate the package with.</p>
    public let domainName: String?
    /// <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    public let packageID: String?

    public init (
        domainName: String? = nil,
        packageID: String? = nil
    )
    {
        self.domainName = domainName
        self.packageID = packageID
    }
}

extension DissociatePackageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DissociatePackageInput(domainName: \(String(describing: domainName)), packageID: \(String(describing: packageID)))"}
}
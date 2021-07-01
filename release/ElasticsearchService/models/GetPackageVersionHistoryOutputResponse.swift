// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       Container for response returned by
///       <code>
///         <a>GetPackageVersionHistory</a>
///       </code>
///       operation.
///     </p>
public struct GetPackageVersionHistoryOutputResponse: Equatable {
    public let nextToken: String?
    public let packageID: String?
    /// <p>List of <code>PackageVersionHistory</code> objects.</p>
    public let packageVersionHistoryList: [PackageVersionHistory]?

    public init (
        nextToken: String? = nil,
        packageID: String? = nil,
        packageVersionHistoryList: [PackageVersionHistory]? = nil
    )
    {
        self.nextToken = nextToken
        self.packageID = packageID
        self.packageVersionHistoryList = packageVersionHistoryList
    }
}

extension GetPackageVersionHistoryOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPackageVersionHistoryOutputResponse(nextToken: \(String(describing: nextToken)), packageID: \(String(describing: packageID)), packageVersionHistoryList: \(String(describing: packageVersionHistoryList)))"}
}
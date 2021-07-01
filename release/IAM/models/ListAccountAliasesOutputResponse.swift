// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>ListAccountAliases</a> request.
///     </p>
public struct ListAccountAliasesOutputResponse: Equatable {
    /// <p>A list of aliases associated with the account. AWS supports only one alias per
    ///             account.</p>
    public let accountAliases: [String]?
    /// <p>A flag that indicates whether there are more items to return. If your
    ///     results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    ///     request parameter to retrieve more items. Note that IAM might return fewer than the
    ///     <code>MaxItems</code> number of results even when there are more results available. We recommend
    ///     that you check <code>IsTruncated</code> after every call to ensure that you receive all your
    ///     results.</p>
    public let isTruncated: Bool
    /// <p>When <code>IsTruncated</code> is <code>true</code>, this element
    ///     is present and contains the value to use for the <code>Marker</code> parameter in a subsequent
    ///     pagination request.</p>
    public let marker: String?

    public init (
        accountAliases: [String]? = nil,
        isTruncated: Bool = false,
        marker: String? = nil
    )
    {
        self.accountAliases = accountAliases
        self.isTruncated = isTruncated
        self.marker = marker
    }
}

extension ListAccountAliasesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAccountAliasesOutputResponse(accountAliases: \(String(describing: accountAliases)), isTruncated: \(String(describing: isTruncated)), marker: \(String(describing: marker)))"}
}
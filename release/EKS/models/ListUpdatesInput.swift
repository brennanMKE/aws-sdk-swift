// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListUpdatesInput: Equatable {
    /// <p>The names of the installed add-ons that have available updates.</p>
    public let addonName: String?
    /// <p>The maximum number of update results returned by <code>ListUpdates</code> in paginated
    ///             output. When you use this parameter, <code>ListUpdates</code> returns only
    ///                 <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    ///             response element. You can see the remaining results of the initial request by sending
    ///             another <code>ListUpdates</code> request with the returned <code>nextToken</code> value.
    ///             This value can be between 1 and 100. If you don't use this
    ///             parameter, <code>ListUpdates</code> returns up to 100 results and a
    ///                 <code>nextToken</code> value if applicable.</p>
    public let maxResults: Int?
    /// <p>The name of the Amazon EKS cluster to list updates for.</p>
    public let name: String?
    /// <p>The <code>nextToken</code> value returned from a previous paginated
    ///                 <code>ListUpdates</code> request where <code>maxResults</code> was used and the
    ///             results exceeded the value of that parameter. Pagination continues from the end of the
    ///             previous results that returned the <code>nextToken</code> value.</p>
    public let nextToken: String?
    /// <p>The name of the Amazon EKS managed node group to list updates for.</p>
    public let nodegroupName: String?

    public init (
        addonName: String? = nil,
        maxResults: Int? = nil,
        name: String? = nil,
        nextToken: String? = nil,
        nodegroupName: String? = nil
    )
    {
        self.addonName = addonName
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
        self.nodegroupName = nodegroupName
    }
}

extension ListUpdatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListUpdatesInput(addonName: \(String(describing: addonName)), maxResults: \(String(describing: maxResults)), name: \(String(describing: name)), nextToken: \(String(describing: nextToken)), nodegroupName: \(String(describing: nodegroupName)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListWebACLsOutputResponse: Equatable {
    /// <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    ///          for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code>
    ///          value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    public let nextMarker: String?
    /// <p></p>
    public let webACLs: [WebACLSummary]?

    public init (
        nextMarker: String? = nil,
        webACLs: [WebACLSummary]? = nil
    )
    {
        self.nextMarker = nextMarker
        self.webACLs = webACLs
    }
}

extension ListWebACLsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListWebACLsOutputResponse(nextMarker: \(String(describing: nextMarker)), webACLs: \(String(describing: webACLs)))"}
}
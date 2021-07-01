// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The <code>ListPresetsRequest</code> structure.</p>
public struct ListPresetsInput: Equatable {
    /// <p>To list presets in chronological order by the date and time that they were created, enter
    ///             <code>true</code>. To list presets in reverse chronological order, enter
    ///             <code>false</code>.</p>
    public let ascending: String?
    /// <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    ///             subsequent <code>GET</code> requests to get each successive page of results. </p>
    public let pageToken: String?

    public init (
        ascending: String? = nil,
        pageToken: String? = nil
    )
    {
        self.ascending = ascending
        self.pageToken = pageToken
    }
}

extension ListPresetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPresetsInput(ascending: \(String(describing: ascending)), pageToken: \(String(describing: pageToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListInstanceProfilesForRoleInput: Equatable {
    /// <p>Use this parameter only when paginating results and only after
    ///     you receive a response indicating that the results are truncated. Set it to the value of the
    ///     <code>Marker</code> element in the response that you received to indicate where the next call
    ///     should start.</p>
    public let marker: String?
    /// <p>Use this only when paginating results to indicate the
    ///     maximum number of items you want in the response. If additional items exist beyond the maximum
    ///     you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    ///          <p>If you do not include this parameter, the number of items defaults to 100. Note that
    ///     IAM might return fewer results, even when there are more results available. In that case, the
    ///     <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    ///     contains a value to include in the subsequent call that tells the service where to continue
    ///     from.</p>
    public let maxItems: Int?
    /// <p>The name of the role to list instance profiles for.</p>
    ///         <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let roleName: String?

    public init (
        marker: String? = nil,
        maxItems: Int? = nil,
        roleName: String? = nil
    )
    {
        self.marker = marker
        self.maxItems = maxItems
        self.roleName = roleName
    }
}

extension ListInstanceProfilesForRoleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListInstanceProfilesForRoleInput(marker: \(String(describing: marker)), maxItems: \(String(describing: maxItems)), roleName: \(String(describing: roleName)))"}
}
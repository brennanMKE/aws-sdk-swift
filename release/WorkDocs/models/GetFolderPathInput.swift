// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetFolderPathInput: Equatable {
    /// <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    public let authenticationToken: String?
    /// <p>A comma-separated list of values. Specify "NAME" to include the names of the parent
    ///             folders.</p>
    public let fields: String?
    /// <p>The ID of the folder.</p>
    public let folderId: String?
    /// <p>The maximum number of levels in the hierarchy to return.</p>
    public let limit: Int?
    /// <p>This value is not supported.</p>
    public let marker: String?

    public init (
        authenticationToken: String? = nil,
        fields: String? = nil,
        folderId: String? = nil,
        limit: Int? = nil,
        marker: String? = nil
    )
    {
        self.authenticationToken = authenticationToken
        self.fields = fields
        self.folderId = folderId
        self.limit = limit
        self.marker = marker
    }
}

extension GetFolderPathInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetFolderPathInput(authenticationToken: \(String(describing: authenticationToken)), fields: \(String(describing: fields)), folderId: \(String(describing: folderId)), limit: \(String(describing: limit)), marker: \(String(describing: marker)))"}
}
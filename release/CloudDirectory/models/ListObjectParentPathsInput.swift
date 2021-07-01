// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListObjectParentPathsInput: Equatable {
    /// <p>The ARN of the directory to which the parent path applies.</p>
    public let directoryArn: String?
    /// <p>The maximum number of items to be retrieved in a single call. This is an approximate
    ///       number.</p>
    public let maxResults: Int?
    /// <p>The pagination token.</p>
    public let nextToken: String?
    /// <p>The reference that identifies the object whose parent paths are listed.</p>
    public let objectReference: ObjectReference?

    public init (
        directoryArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        objectReference: ObjectReference? = nil
    )
    {
        self.directoryArn = directoryArn
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.objectReference = objectReference
    }
}

extension ListObjectParentPathsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListObjectParentPathsInput(directoryArn: \(String(describing: directoryArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), objectReference: \(String(describing: objectReference)))"}
}
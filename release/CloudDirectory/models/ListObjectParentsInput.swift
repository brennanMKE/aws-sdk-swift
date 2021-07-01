// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListObjectParentsInput: Equatable {
    /// <p>Represents the manner and timing in which the successful write or update of an object
    ///       is reflected in a subsequent read operation of that same object.</p>
    public let consistencyLevel: ConsistencyLevel?
    /// <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    ///       where the object resides. For more information, see <a>arns</a>.</p>
    public let directoryArn: String?
    /// <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
    public let includeAllLinksToEachParent: Bool
    /// <p>The maximum number of items to be retrieved in a single call. This is an approximate
    ///       number.</p>
    public let maxResults: Int?
    /// <p>The pagination token.</p>
    public let nextToken: String?
    /// <p>The reference that identifies the object for which parent objects are being
    ///       listed.</p>
    public let objectReference: ObjectReference?

    public init (
        consistencyLevel: ConsistencyLevel? = nil,
        directoryArn: String? = nil,
        includeAllLinksToEachParent: Bool = false,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        objectReference: ObjectReference? = nil
    )
    {
        self.consistencyLevel = consistencyLevel
        self.directoryArn = directoryArn
        self.includeAllLinksToEachParent = includeAllLinksToEachParent
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.objectReference = objectReference
    }
}

extension ListObjectParentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListObjectParentsInput(consistencyLevel: \(String(describing: consistencyLevel)), directoryArn: \(String(describing: directoryArn)), includeAllLinksToEachParent: \(String(describing: includeAllLinksToEachParent)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), objectReference: \(String(describing: objectReference)))"}
}
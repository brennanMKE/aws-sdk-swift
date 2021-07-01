// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceInput: Equatable {
    /// <p></p>
    public let limit: Int
    /// <p></p>
    public let nextMarker: String?
    /// <p></p>
    public let resourceARN: String?

    public init (
        limit: Int = 0,
        nextMarker: String? = nil,
        resourceARN: String? = nil
    )
    {
        self.limit = limit
        self.nextMarker = nextMarker
        self.resourceARN = resourceARN
    }
}

extension ListTagsForResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceInput(limit: \(String(describing: limit)), nextMarker: \(String(describing: nextMarker)), resourceARN: \(String(describing: resourceARN)))"}
}
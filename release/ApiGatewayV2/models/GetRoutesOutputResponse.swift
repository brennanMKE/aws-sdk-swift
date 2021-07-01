// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRoutesOutputResponse: Equatable {
    /// <p>The elements from this collection.</p>
    public let items: [Route]?
    /// <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    public let nextToken: String?

    public init (
        items: [Route]? = nil,
        nextToken: String? = nil
    )
    {
        self.items = items
        self.nextToken = nextToken
    }
}

extension GetRoutesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRoutesOutputResponse(items: \(String(describing: items)), nextToken: \(String(describing: nextToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeStacksInput: Equatable {
    /// <p>The names of the stacks to describe.</p>
    public let names: [String]?
    /// <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    public let nextToken: String?

    public init (
        names: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.names = names
        self.nextToken = nextToken
    }
}

extension DescribeStacksInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeStacksInput(names: \(String(describing: names)), nextToken: \(String(describing: nextToken)))"}
}
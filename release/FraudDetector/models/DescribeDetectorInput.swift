// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDetectorInput: Equatable {
    /// <p>The detector ID.</p>
    public let detectorId: String?
    /// <p>The maximum number of results to return for the request.</p>
    public let maxResults: Int?
    /// <p>The next token from the previous response.</p>
    public let nextToken: String?

    public init (
        detectorId: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.detectorId = detectorId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeDetectorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDetectorInput(detectorId: \(String(describing: detectorId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
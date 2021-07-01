// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeExportConfigurationsInput: Equatable {
    /// <p>A list of continuous export IDs to search for.</p>
    public let exportIds: [String]?
    /// <p>A number between 1 and 100 specifying the maximum number of continuous export
    ///       descriptions returned.</p>
    public let maxResults: Int
    /// <p>The token from the previous call to describe-export-tasks.</p>
    public let nextToken: String?

    public init (
        exportIds: [String]? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.exportIds = exportIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeExportConfigurationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeExportConfigurationsInput(exportIds: \(String(describing: exportIds)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
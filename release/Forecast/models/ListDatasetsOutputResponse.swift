// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListDatasetsOutputResponse: Equatable {
    /// <p>An array of objects that summarize each dataset's properties.</p>
    public let datasets: [DatasetSummary]?
    /// <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    ///       results, use the token in the next request.</p>
    public let nextToken: String?

    public init (
        datasets: [DatasetSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.datasets = datasets
        self.nextToken = nextToken
    }
}

extension ListDatasetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDatasetsOutputResponse(datasets: \(String(describing: datasets)), nextToken: \(String(describing: nextToken)))"}
}
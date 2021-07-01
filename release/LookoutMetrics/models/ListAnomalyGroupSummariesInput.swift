// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAnomalyGroupSummariesInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    public let anomalyDetectorArn: String?
    /// <p>The maximum number of results to return.</p>
    public let maxResults: Int
    /// <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    public let nextToken: String?
    /// <p>The minimum severity score for inclusion in the output.</p>
    public let sensitivityThreshold: Int

    public init (
        anomalyDetectorArn: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        sensitivityThreshold: Int = 0
    )
    {
        self.anomalyDetectorArn = anomalyDetectorArn
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sensitivityThreshold = sensitivityThreshold
    }
}

extension ListAnomalyGroupSummariesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAnomalyGroupSummariesInput(anomalyDetectorArn: \(String(describing: anomalyDetectorArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sensitivityThreshold: \(String(describing: sensitivityThreshold)))"}
}
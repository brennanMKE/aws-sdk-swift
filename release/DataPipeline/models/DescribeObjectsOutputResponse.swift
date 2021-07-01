// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of DescribeObjects.</p>
public struct DescribeObjectsOutputResponse: Equatable {
    /// <p>Indicates whether there are more results to return.</p>
    public let hasMoreResults: Bool
    /// <p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code>
    ///            again with this marker value. If the value is null, there are no more results.</p>
    public let marker: String?
    /// <p>An array of object definitions.</p>
    public let pipelineObjects: [PipelineObject]?

    public init (
        hasMoreResults: Bool = false,
        marker: String? = nil,
        pipelineObjects: [PipelineObject]? = nil
    )
    {
        self.hasMoreResults = hasMoreResults
        self.marker = marker
        self.pipelineObjects = pipelineObjects
    }
}

extension DescribeObjectsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeObjectsOutputResponse(hasMoreResults: \(String(describing: hasMoreResults)), marker: \(String(describing: marker)), pipelineObjects: \(String(describing: pipelineObjects)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListDataSetsOutputResponse: Equatable {
    /// <p>The data set objects listed by the request.</p>
    public let dataSets: [DataSetEntry]?
    /// <p>The token value retrieved from a previous call to access the next page of results.</p>
    public let nextToken: String?

    public init (
        dataSets: [DataSetEntry]? = nil,
        nextToken: String? = nil
    )
    {
        self.dataSets = dataSets
        self.nextToken = nextToken
    }
}

extension ListDataSetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDataSetsOutputResponse(dataSets: \(String(describing: dataSets)), nextToken: \(String(describing: nextToken)))"}
}
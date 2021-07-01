// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about requests that failed with a 5xx Server Error status code.</p>
public struct FaultStatistics: Equatable {
    /// <p>The number of requests that failed with untracked 5xx Server Error status
    ///       codes.</p>
    public let otherCount: Int?
    /// <p>The total number of requests that failed with a 5xx Server Error status code.</p>
    public let totalCount: Int?

    public init (
        otherCount: Int? = nil,
        totalCount: Int? = nil
    )
    {
        self.otherCount = otherCount
        self.totalCount = totalCount
    }
}

extension FaultStatistics: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FaultStatistics(otherCount: \(String(describing: otherCount)), totalCount: \(String(describing: totalCount)))"}
}
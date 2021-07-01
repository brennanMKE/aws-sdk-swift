// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides details about execution input or output.</p>
public struct CloudWatchEventsExecutionDataDetails: Equatable {
    /// <p>Indicates whether input or output was included in the response. Always <code>true</code>
    ///       for API calls. </p>
    public let included: Bool

    public init (
        included: Bool = false
    )
    {
        self.included = included
    }
}

extension CloudWatchEventsExecutionDataDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudWatchEventsExecutionDataDetails(included: \(String(describing: included)))"}
}
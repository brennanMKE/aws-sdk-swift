// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeStreamOutputResponse: Equatable {
    /// <p>An object that describes the stream.</p>
    public let streamInfo: StreamInfo?

    public init (
        streamInfo: StreamInfo? = nil
    )
    {
        self.streamInfo = streamInfo
    }
}

extension DescribeStreamOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeStreamOutputResponse(streamInfo: \(String(describing: streamInfo)))"}
}
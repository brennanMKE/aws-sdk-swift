// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
public struct JSONMappingParameters: Equatable {
    /// <p>Path to the top-level parent that contains the records.</p>
    public let recordRowPath: String?

    public init (
        recordRowPath: String? = nil
    )
    {
        self.recordRowPath = recordRowPath
    }
}

extension JSONMappingParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JSONMappingParameters(recordRowPath: \(String(describing: recordRowPath)))"}
}
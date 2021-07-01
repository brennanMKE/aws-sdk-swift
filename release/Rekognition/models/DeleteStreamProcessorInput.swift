// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteStreamProcessorInput: Equatable {
    /// <p>The name of the stream processor you want to delete.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension DeleteStreamProcessorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteStreamProcessorInput(name: \(String(describing: name)))"}
}
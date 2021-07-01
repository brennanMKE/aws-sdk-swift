// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the operations that are allowed on a maintenance track.</p>
public struct SupportedOperation: Equatable {
    /// <p>A list of the supported operations.</p>
    public let operationName: String?

    public init (
        operationName: String? = nil
    )
    {
        self.operationName = operationName
    }
}

extension SupportedOperation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SupportedOperation(operationName: \(String(describing: operationName)))"}
}
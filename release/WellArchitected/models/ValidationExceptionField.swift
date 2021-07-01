// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Stores information about a field passed inside a request that resulted in an exception.</p>
public struct ValidationExceptionField: Equatable {
    /// <p>Description of the error.</p>
    public let message: String?
    /// <p>The field name for which validation failed.</p>
    public let name: String?

    public init (
        message: String? = nil,
        name: String? = nil
    )
    {
        self.message = message
        self.name = name
    }
}

extension ValidationExceptionField: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ValidationExceptionField(message: \(String(describing: message)), name: \(String(describing: name)))"}
}
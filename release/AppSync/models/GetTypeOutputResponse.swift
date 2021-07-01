// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetTypeOutputResponse: Equatable {
    /// <p>The <code>Type</code> object.</p>
    public let type: `Type`?

    public init (
        type: `Type`? = nil
    )
    {
        self.type = type
    }
}

extension GetTypeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetTypeOutputResponse(type: \(String(describing: type)))"}
}
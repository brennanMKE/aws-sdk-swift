// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetConnectionOutputResponse: Equatable {
    /// <p>The requested connection definition.</p>
    public let connection: Connection?

    public init (
        connection: Connection? = nil
    )
    {
        self.connection = connection
    }
}

extension GetConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConnectionOutputResponse(connection: \(String(describing: connection)))"}
}
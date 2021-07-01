// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetServiceInput: Equatable {
    /// <p>The ID of the service that you want to get settings for.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetServiceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetServiceInput(id: \(String(describing: id)))"}
}
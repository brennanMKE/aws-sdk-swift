// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCustomRoutingListenerOutputResponse: Equatable {
    /// <p>The listener that you've created for a custom routing accelerator.</p>
    public let listener: CustomRoutingListener?

    public init (
        listener: CustomRoutingListener? = nil
    )
    {
        self.listener = listener
    }
}

extension CreateCustomRoutingListenerOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCustomRoutingListenerOutputResponse(listener: \(String(describing: listener)))"}
}
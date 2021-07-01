// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation. </p>
@available(*, deprecated)
public struct InvokeAsyncOutputResponse: Equatable {
    /// <p>The status code.</p>
    public let status: Int

    public init (
        status: Int = 0
    )
    {
        self.status = status
    }
}

extension InvokeAsyncOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvokeAsyncOutputResponse(status: \(String(describing: status)))"}
}
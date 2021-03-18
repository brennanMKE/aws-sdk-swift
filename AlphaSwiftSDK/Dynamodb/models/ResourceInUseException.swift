// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <p>The operation conflicts with the resource's availability. For example, you attempted to
       recreate an existing table, or tried to delete a table currently in the <code>CREATING</code>
       state.</p>
 */
public struct ResourceInUseException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    /// <p>The resource which is being attempted to be changed is in use.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

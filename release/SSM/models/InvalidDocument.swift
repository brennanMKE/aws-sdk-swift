// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified document does not exist.</p>
public struct InvalidDocument: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The document does not exist or the document is not available to the user. This exception can
    ///    be issued by CreateAssociation, CreateAssociationBatch, DeleteAssociation, DeleteDocument,
    ///    DescribeAssociation, DescribeDocument, GetDocument, SendCommand, or UpdateAssociationStatus.
    ///   </p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension InvalidDocument: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidDocument(message: \(String(describing: message)))"}
}
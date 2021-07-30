// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension DeleteConnectionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteConnectionInput(connectionId: \(String(describing: connectionId)))"}
}

extension DeleteConnectionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}

public struct DeleteConnectionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteConnectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteConnectionInput>
    public typealias MOutput = OperationOutput<DeleteConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteConnectionOutputError>
}

public struct DeleteConnectionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteConnectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteConnectionInput>
    public typealias MOutput = OperationOutput<DeleteConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteConnectionOutputError>
}

public struct DeleteConnectionInput: Equatable {
    public let connectionId: String?

    public init (
        connectionId: String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

struct DeleteConnectionInputBody: Equatable {
}

extension DeleteConnectionInputBody: Decodable {

    public init (from decoder: Decoder) throws {
    }
}

extension DeleteConnectionOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension DeleteConnectionOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum DeleteConnectionOutputError: Swift.Error, Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}

extension DeleteConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteConnectionOutputResponse()"}
}

extension DeleteConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
    }
}

public struct DeleteConnectionOutputResponse: Equatable {

    public init() {}
}

struct DeleteConnectionOutputResponseBody: Equatable {
}

extension DeleteConnectionOutputResponseBody: Decodable {

    public init (from decoder: Decoder) throws {
    }
}

extension ForbiddenException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ForbiddenException()"}
}

extension ForbiddenException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p>The caller is not authorized to invoke this operation.</p>
public struct ForbiddenException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client

    public init() {}
}

extension GetConnectionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConnectionInput(connectionId: \(String(describing: connectionId)))"}
}

extension GetConnectionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}

public struct GetConnectionInputHeadersMiddleware: Middleware {
    public let id: String = "GetConnectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetConnectionInput>
    public typealias MOutput = OperationOutput<GetConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetConnectionOutputError>
}

public struct GetConnectionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetConnectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetConnectionInput>
    public typealias MOutput = OperationOutput<GetConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetConnectionOutputError>
}

public struct GetConnectionInput: Equatable {
    public let connectionId: String?

    public init (
        connectionId: String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

struct GetConnectionInputBody: Equatable {
}

extension GetConnectionInputBody: Decodable {

    public init (from decoder: Decoder) throws {
    }
}

extension GetConnectionOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension GetConnectionOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum GetConnectionOutputError: Swift.Error, Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}

extension GetConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConnectionOutputResponse(connectedAt: \(String(describing: connectedAt)), identity: \(String(describing: identity)), lastActiveAt: \(String(describing: lastActiveAt)))"}
}

extension GetConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: GetConnectionOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.connectedAt = output.connectedAt
            self.identity = output.identity
            self.lastActiveAt = output.lastActiveAt
        } else {
            self.connectedAt = nil
            self.identity = nil
            self.lastActiveAt = nil
        }
    }
}

public struct GetConnectionOutputResponse: Equatable {
    /// <p>The time in ISO 8601 format for when the connection was established.</p>
    public let connectedAt: Date?
    public let identity: Identity?
    /// <p>The time in ISO 8601 format for when the connection was last active.</p>
    public let lastActiveAt: Date?

    public init (
        connectedAt: Date? = nil,
        identity: Identity? = nil,
        lastActiveAt: Date? = nil
    )
    {
        self.connectedAt = connectedAt
        self.identity = identity
        self.lastActiveAt = lastActiveAt
    }
}

struct GetConnectionOutputResponseBody: Equatable {
    public let connectedAt: Date?
    public let identity: Identity?
    public let lastActiveAt: Date?
}

extension GetConnectionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectedAt = "connectedAt"
        case identity = "identity"
        case lastActiveAt = "lastActiveAt"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .connectedAt)
        connectedAt = connectedAtDecoded
        let identityDecoded = try containerValues.decodeIfPresent(Identity.self, forKey: .identity)
        identity = identityDecoded
        let lastActiveAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastActiveAt)
        lastActiveAt = lastActiveAtDecoded
    }
}

extension GoneException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GoneException()"}
}

extension GoneException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p>The connection with the provided id no longer exists.</p>
public struct GoneException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client

    public init() {}
}

extension Identity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sourceIp = "sourceIp"
        case userAgent = "userAgent"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceIp = sourceIp {
            try encodeContainer.encode(sourceIp, forKey: .sourceIp)
        }
        if let userAgent = userAgent {
            try encodeContainer.encode(userAgent, forKey: .userAgent)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceIp)
        sourceIp = sourceIpDecoded
        let userAgentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userAgent)
        userAgent = userAgentDecoded
    }
}

extension Identity: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Identity(sourceIp: \(String(describing: sourceIp)), userAgent: \(String(describing: userAgent)))"}
}

public struct Identity: Equatable {
    /// <p>The source IP address of the TCP connection making the request to API Gateway.</p>
    public let sourceIp: String?
    /// <p>The User Agent of the API caller.</p>
    public let userAgent: String?

    public init (
        sourceIp: String? = nil,
        userAgent: String? = nil
    )
    {
        self.sourceIp = sourceIp
        self.userAgent = userAgent
    }
}

extension LimitExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LimitExceededException()"}
}

extension LimitExceededException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>
public struct LimitExceededException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client

    public init() {}
}

extension PayloadTooLargeException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PayloadTooLargeException(message: \(String(describing: message)))"}
}

extension PayloadTooLargeException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: PayloadTooLargeExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p>The data has exceeded the maximum size allowed.</p>
public struct PayloadTooLargeException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

struct PayloadTooLargeExceptionBody: Equatable {
    public let message: String?
}

extension PayloadTooLargeExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}

public struct PostToConnectionInputBodyMiddleware: Middleware {
    public let id: String = "PostToConnectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PostToConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<PostToConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let data = input.operationInput.data {
            let datadata = data
            let databody = HttpBody.data(datadata)
            input.builder.withBody(databody)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PostToConnectionInput>
    public typealias MOutput = OperationOutput<PostToConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PostToConnectionOutputError>
}

extension PostToConnectionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PostToConnectionInput(connectionId: \(String(describing: connectionId)), data: \(String(describing: data)))"}
}

extension PostToConnectionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case data = "Data"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let data = data {
            try encodeContainer.encode(data.base64EncodedString(), forKey: .data)
        }
    }
}

public struct PostToConnectionInputHeadersMiddleware: Middleware {
    public let id: String = "PostToConnectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PostToConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<PostToConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PostToConnectionInput>
    public typealias MOutput = OperationOutput<PostToConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PostToConnectionOutputError>
}

public struct PostToConnectionInputQueryItemMiddleware: Middleware {
    public let id: String = "PostToConnectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PostToConnectionInput>,
                  next: H) -> Swift.Result<OperationOutput<PostToConnectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PostToConnectionInput>
    public typealias MOutput = OperationOutput<PostToConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PostToConnectionOutputError>
}

public struct PostToConnectionInput: Equatable {
    /// <p>The identifier of the connection that a specific client is using.</p>
    public let connectionId: String?
    /// <p>The data to be sent to the client specified by its connection id.</p>
    public let data: Data?

    public init (
        connectionId: String? = nil,
        data: Data? = nil
    )
    {
        self.connectionId = connectionId
        self.data = data
    }
}

struct PostToConnectionInputBody: Equatable {
    public let data: Data?
}

extension PostToConnectionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case data = "Data"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .data)
        data = dataDecoded
    }
}

extension PostToConnectionOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension PostToConnectionOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "PayloadTooLargeException" : self = .payloadTooLargeException(try PayloadTooLargeException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum PostToConnectionOutputError: Swift.Error, Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case payloadTooLargeException(PayloadTooLargeException)
    case unknown(UnknownAWSHttpServiceError)
}

extension PostToConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PostToConnectionOutputResponse()"}
}

extension PostToConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
    }
}

public struct PostToConnectionOutputResponse: Equatable {

    public init() {}
}

struct PostToConnectionOutputResponseBody: Equatable {
}

extension PostToConnectionOutputResponseBody: Decodable {

    public init (from decoder: Decoder) throws {
    }
}
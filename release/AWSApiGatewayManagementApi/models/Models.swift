// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension DeleteConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct DeleteConnectionInput: Swift.Equatable {
    /// This member is required.
    var connectionId: Swift.String?

    public init (
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

extension DeleteConnectionOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension DeleteConnectionOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum DeleteConnectionOutputError: Swift.Error, Swift.Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}

extension DeleteConnectionOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct DeleteConnectionOutputResponse: Swift.Equatable {

}

extension ForbiddenException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The caller is not authorized to invoke this operation.
public struct ForbiddenException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client

}

extension GetConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct GetConnectionInput: Swift.Equatable {
    /// This member is required.
    var connectionId: Swift.String?

    public init (
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

extension GetConnectionOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension GetConnectionOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum GetConnectionOutputError: Swift.Error, Swift.Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}

extension GetConnectionOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
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

public struct GetConnectionOutputResponse: Swift.Equatable {
    /// The time in ISO 8601 format for when the connection was established.
    var connectedAt: ClientRuntime.Date?
    var identity: ApiGatewayManagementApiClientTypes.Identity?
    /// The time in ISO 8601 format for when the connection was last active.
    var lastActiveAt: ClientRuntime.Date?

    public init (
        connectedAt: ClientRuntime.Date? = nil,
        identity: ApiGatewayManagementApiClientTypes.Identity? = nil,
        lastActiveAt: ClientRuntime.Date? = nil
    )
    {
        self.connectedAt = connectedAt
        self.identity = identity
        self.lastActiveAt = lastActiveAt
    }
}

struct GetConnectionOutputResponseBody: Swift.Equatable {
    let connectedAt: ClientRuntime.Date?
    let identity: ApiGatewayManagementApiClientTypes.Identity?
    let lastActiveAt: ClientRuntime.Date?
}

extension GetConnectionOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case connectedAt = "connectedAt"
        case identity = "identity"
        case lastActiveAt = "lastActiveAt"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectedAtDecoded = try containerValues.decodeIfPresent(ClientRuntime.Date.self, forKey: .connectedAt)
        connectedAt = connectedAtDecoded
        let identityDecoded = try containerValues.decodeIfPresent(ApiGatewayManagementApiClientTypes.Identity.self, forKey: .identity)
        identity = identityDecoded
        let lastActiveAtDecoded = try containerValues.decodeIfPresent(ClientRuntime.Date.self, forKey: .lastActiveAt)
        lastActiveAt = lastActiveAtDecoded
    }
}

extension GoneException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The connection with the provided id no longer exists.
public struct GoneException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client

}

extension ApiGatewayManagementApiClientTypes.Identity: Swift.Codable, ClientRuntime.Reflection {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case sourceIp = "sourceIp"
        case userAgent = "userAgent"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceIp = sourceIp {
            try encodeContainer.encode(sourceIp, forKey: .sourceIp)
        }
        if let userAgent = userAgent {
            try encodeContainer.encode(userAgent, forKey: .userAgent)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceIpDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sourceIp)
        sourceIp = sourceIpDecoded
        let userAgentDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .userAgent)
        userAgent = userAgentDecoded
    }
}

extension ApiGatewayManagementApiClientTypes {
    public struct Identity: Swift.Equatable {
        /// The source IP address of the TCP connection making the request to API Gateway.
        /// This member is required.
        var sourceIp: Swift.String?
        /// The User Agent of the API caller.
        /// This member is required.
        var userAgent: Swift.String?

        public init (
            sourceIp: Swift.String? = nil,
            userAgent: Swift.String? = nil
        )
        {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }
    }

}

extension LimitExceededException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.
public struct LimitExceededException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client

}

extension PayloadTooLargeException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
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

/// The data has exceeded the maximum size allowed.
public struct PayloadTooLargeException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct PayloadTooLargeExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension PayloadTooLargeExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

public struct PostToConnectionInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "PostToConnectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<PostToConnectionInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<PostToConnectionOutputResponse>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        if let data = input.operationInput.data {
            let datadata = data
            let databody = ClientRuntime.HttpBody.data(datadata)
            input.builder.withBody(databody)
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<PostToConnectionInput>
    public typealias MOutput = ClientRuntime.OperationOutput<PostToConnectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
}

extension PostToConnectionInput: Swift.Encodable, ClientRuntime.Reflection {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case data = "Data"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let data = data {
            try encodeContainer.encode(data.base64EncodedString(), forKey: .data)
        }
    }
}

extension PostToConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct PostToConnectionInput: Swift.Equatable {
    /// The identifier of the connection that a specific client is using.
    /// This member is required.
    var connectionId: Swift.String?
    /// The data to be sent to the client specified by its connection id.
    /// This member is required.
    var data: ClientRuntime.Data?

    public init (
        connectionId: Swift.String? = nil,
        data: ClientRuntime.Data? = nil
    )
    {
        self.connectionId = connectionId
        self.data = data
    }
}

struct PostToConnectionInputBody: Swift.Equatable {
    let data: ClientRuntime.Data?
}

extension PostToConnectionInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case data = "Data"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataDecoded = try containerValues.decodeIfPresent(ClientRuntime.Data.self, forKey: .data)
        data = dataDecoded
    }
}

extension PostToConnectionOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension PostToConnectionOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "ForbiddenException" : self = .forbiddenException(try ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "GoneException" : self = .goneException(try GoneException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "PayloadTooLargeException" : self = .payloadTooLargeException(try PayloadTooLargeException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum PostToConnectionOutputError: Swift.Error, Swift.Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case payloadTooLargeException(PayloadTooLargeException)
    case unknown(UnknownAWSHttpServiceError)
}

extension PostToConnectionOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct PostToConnectionOutputResponse: Swift.Equatable {

}

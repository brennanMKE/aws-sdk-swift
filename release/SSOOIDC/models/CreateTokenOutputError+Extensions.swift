// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension CreateTokenOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension CreateTokenOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "AccessDeniedException" : self = .accessDeniedException(try AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "AuthorizationPendingException" : self = .authorizationPendingException(try AuthorizationPendingException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ExpiredTokenException" : self = .expiredTokenException(try ExpiredTokenException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServerException" : self = .internalServerException(try InternalServerException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidClientException" : self = .invalidClientException(try InvalidClientException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidGrantException" : self = .invalidGrantException(try InvalidGrantException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidRequestException" : self = .invalidRequestException(try InvalidRequestException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidScopeException" : self = .invalidScopeException(try InvalidScopeException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SlowDownException" : self = .slowDownException(try SlowDownException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnauthorizedClientException" : self = .unauthorizedClientException(try UnauthorizedClientException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedGrantTypeException" : self = .unsupportedGrantTypeException(try UnsupportedGrantTypeException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
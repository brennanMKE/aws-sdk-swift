// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension ListUserPoolsError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "InternalErrorException" : self = .internalErrorException(try InternalErrorException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidParameterException" : self = .invalidParameterException(try InvalidParameterException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NotAuthorizedException" : self = .notAuthorizedException(try NotAuthorizedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyRequestsException" : self = .tooManyRequestsException(try TooManyRequestsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message))
        }
    }
}

extension ListUserPoolsError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

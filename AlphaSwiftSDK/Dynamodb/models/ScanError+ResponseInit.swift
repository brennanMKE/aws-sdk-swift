// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension ScanError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "InternalServerError" : self = .internalServerError(try InternalServerError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidEndpointException" : self = .invalidEndpointException(try InvalidEndpointException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ProvisionedThroughputExceededException" : self = .provisionedThroughputExceededException(try ProvisionedThroughputExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "RequestLimitExceeded" : self = .requestLimitExceeded(try RequestLimitExceeded(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message))
        }
    }
}

extension ScanError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

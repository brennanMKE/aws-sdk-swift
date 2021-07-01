// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension DescribeJobOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension DescribeJobOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "BadRequestException" : self = .badRequestException(try BadRequestException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServiceException" : self = .internalServiceException(try InternalServiceException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NotFoundException" : self = .notFoundException(try NotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyRequestsException" : self = .tooManyRequestsException(try TooManyRequestsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
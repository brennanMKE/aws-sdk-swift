// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension ListFindingsOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension ListFindingsOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "AccessDeniedException" : self = .accessDeniedException(try AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ConflictException" : self = .conflictException(try ConflictException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServerException" : self = .internalServerException(try InternalServerException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceQuotaExceededException" : self = .serviceQuotaExceededException(try ServiceQuotaExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ThrottlingException" : self = .throttlingException(try ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ValidationException" : self = .validationException(try ValidationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
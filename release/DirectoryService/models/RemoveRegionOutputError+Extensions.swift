// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension RemoveRegionOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension RemoveRegionOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "AccessDeniedException" : self = .accessDeniedException(try AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ClientException" : self = .clientException(try ClientException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DirectoryDoesNotExistException" : self = .directoryDoesNotExistException(try DirectoryDoesNotExistException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DirectoryUnavailableException" : self = .directoryUnavailableException(try DirectoryUnavailableException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceException" : self = .serviceException(try ServiceException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedOperationException" : self = .unsupportedOperationException(try UnsupportedOperationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
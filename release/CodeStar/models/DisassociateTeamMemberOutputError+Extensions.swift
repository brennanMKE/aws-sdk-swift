// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension DisassociateTeamMemberOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension DisassociateTeamMemberOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ConcurrentModificationException" : self = .concurrentModificationException(try ConcurrentModificationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidServiceRoleException" : self = .invalidServiceRoleException(try InvalidServiceRoleException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ProjectNotFoundException" : self = .projectNotFoundException(try ProjectNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ValidationException" : self = .validationException(try ValidationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
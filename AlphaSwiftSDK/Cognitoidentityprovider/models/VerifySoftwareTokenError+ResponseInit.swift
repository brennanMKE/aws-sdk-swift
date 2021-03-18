// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension VerifySoftwareTokenError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "CodeMismatchException" : self = .codeMismatchException(try CodeMismatchException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EnableSoftwareTokenMFAException" : self = .enableSoftwareTokenMFAException(try EnableSoftwareTokenMFAException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalErrorException" : self = .internalErrorException(try InternalErrorException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidParameterException" : self = .invalidParameterException(try InvalidParameterException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidUserPoolConfigurationException" : self = .invalidUserPoolConfigurationException(try InvalidUserPoolConfigurationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NotAuthorizedException" : self = .notAuthorizedException(try NotAuthorizedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "PasswordResetRequiredException" : self = .passwordResetRequiredException(try PasswordResetRequiredException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SoftwareTokenMFANotFoundException" : self = .softwareTokenMFANotFoundException(try SoftwareTokenMFANotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyRequestsException" : self = .tooManyRequestsException(try TooManyRequestsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UserNotConfirmedException" : self = .userNotConfirmedException(try UserNotConfirmedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UserNotFoundException" : self = .userNotFoundException(try UserNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message))
        }
    }
}

extension VerifySoftwareTokenError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

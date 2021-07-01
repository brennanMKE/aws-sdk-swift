// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UpdateRepositoryDescriptionOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension UpdateRepositoryDescriptionOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "EncryptionIntegrityChecksFailedException" : self = .encryptionIntegrityChecksFailedException(try EncryptionIntegrityChecksFailedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EncryptionKeyAccessDeniedException" : self = .encryptionKeyAccessDeniedException(try EncryptionKeyAccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EncryptionKeyDisabledException" : self = .encryptionKeyDisabledException(try EncryptionKeyDisabledException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EncryptionKeyNotFoundException" : self = .encryptionKeyNotFoundException(try EncryptionKeyNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EncryptionKeyUnavailableException" : self = .encryptionKeyUnavailableException(try EncryptionKeyUnavailableException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidRepositoryDescriptionException" : self = .invalidRepositoryDescriptionException(try InvalidRepositoryDescriptionException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidRepositoryNameException" : self = .invalidRepositoryNameException(try InvalidRepositoryNameException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "RepositoryDoesNotExistException" : self = .repositoryDoesNotExistException(try RepositoryDoesNotExistException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "RepositoryNameRequiredException" : self = .repositoryNameRequiredException(try RepositoryNameRequiredException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
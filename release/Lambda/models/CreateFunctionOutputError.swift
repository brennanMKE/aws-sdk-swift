// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateFunctionOutputError: Equatable {
    case codeSigningConfigNotFoundException(CodeSigningConfigNotFoundException)
    case codeStorageExceededException(CodeStorageExceededException)
    case codeVerificationFailedException(CodeVerificationFailedException)
    case invalidCodeSignatureException(InvalidCodeSignatureException)
    case invalidParameterValueException(InvalidParameterValueException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceException(ServiceException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}
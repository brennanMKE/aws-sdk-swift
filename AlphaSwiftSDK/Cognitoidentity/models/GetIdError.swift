// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetIdError {
    case externalServiceException(ExternalServiceException)
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case limitExceededException(LimitExceededException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}

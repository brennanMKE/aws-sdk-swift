// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum SetIdentityPoolRolesError {
    case concurrentModificationException(ConcurrentModificationException)
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}
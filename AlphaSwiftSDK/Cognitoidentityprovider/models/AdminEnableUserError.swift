// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AdminEnableUserError {
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userNotFoundException(UserNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

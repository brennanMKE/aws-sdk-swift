// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AdminForgetDeviceError {
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case invalidUserPoolConfigurationException(InvalidUserPoolConfigurationException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userNotFoundException(UserNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

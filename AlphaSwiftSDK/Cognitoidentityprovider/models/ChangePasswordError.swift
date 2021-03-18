// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ChangePasswordError {
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case invalidPasswordException(InvalidPasswordException)
    case limitExceededException(LimitExceededException)
    case notAuthorizedException(NotAuthorizedException)
    case passwordResetRequiredException(PasswordResetRequiredException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userNotConfirmedException(UserNotConfirmedException)
    case userNotFoundException(UserNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

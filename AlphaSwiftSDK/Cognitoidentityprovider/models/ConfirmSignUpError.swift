// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ConfirmSignUpError {
    case aliasExistsException(AliasExistsException)
    case codeMismatchException(CodeMismatchException)
    case expiredCodeException(ExpiredCodeException)
    case internalErrorException(InternalErrorException)
    case invalidLambdaResponseException(InvalidLambdaResponseException)
    case invalidParameterException(InvalidParameterException)
    case limitExceededException(LimitExceededException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyFailedAttemptsException(TooManyFailedAttemptsException)
    case tooManyRequestsException(TooManyRequestsException)
    case unexpectedLambdaException(UnexpectedLambdaException)
    case userLambdaValidationException(UserLambdaValidationException)
    case userNotFoundException(UserNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

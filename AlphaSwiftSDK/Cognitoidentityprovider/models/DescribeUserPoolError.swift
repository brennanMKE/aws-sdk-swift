// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeUserPoolError {
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userPoolTaggingException(UserPoolTaggingException)
    case unknown(UnknownAWSHttpServiceError)
}

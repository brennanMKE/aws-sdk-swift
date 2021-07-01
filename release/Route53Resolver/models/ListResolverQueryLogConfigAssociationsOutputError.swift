// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListResolverQueryLogConfigAssociationsOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServiceErrorException(InternalServiceErrorException)
    case invalidParameterException(InvalidParameterException)
    case invalidRequestException(InvalidRequestException)
    case limitExceededException(LimitExceededException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutAccessControlRuleOutputError: Equatable {
    case entityNotFoundException(EntityNotFoundException)
    case invalidParameterException(InvalidParameterException)
    case limitExceededException(LimitExceededException)
    case organizationNotFoundException(OrganizationNotFoundException)
    case organizationStateException(OrganizationStateException)
    case unknown(UnknownAWSHttpServiceError)
}
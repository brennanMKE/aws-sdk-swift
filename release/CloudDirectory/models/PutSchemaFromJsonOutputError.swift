// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutSchemaFromJsonOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServiceException(InternalServiceException)
    case invalidArnException(InvalidArnException)
    case invalidRuleException(InvalidRuleException)
    case invalidSchemaDocException(InvalidSchemaDocException)
    case limitExceededException(LimitExceededException)
    case retryableConflictException(RetryableConflictException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
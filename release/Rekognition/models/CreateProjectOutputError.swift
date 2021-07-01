// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateProjectOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServerError(InternalServerError)
    case invalidParameterException(InvalidParameterException)
    case limitExceededException(LimitExceededException)
    case provisionedThroughputExceededException(ProvisionedThroughputExceededException)
    case resourceInUseException(ResourceInUseException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}
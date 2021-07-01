// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateResourcePolicyOutputError: Equatable {
    case internalServerException(InternalServerException)
    case preconditionFailedException(PreconditionFailedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case throttlingException(ThrottlingException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
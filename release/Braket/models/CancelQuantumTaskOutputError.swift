// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CancelQuantumTaskOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case conflictException(ConflictException)
    case internalServiceException(InternalServiceException)
    case resourceNotFoundException(ResourceNotFoundException)
    case throttlingException(ThrottlingException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
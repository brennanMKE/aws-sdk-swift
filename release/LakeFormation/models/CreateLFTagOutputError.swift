// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateLFTagOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case entityNotFoundException(EntityNotFoundException)
    case internalServiceException(InternalServiceException)
    case invalidInputException(InvalidInputException)
    case operationTimeoutException(OperationTimeoutException)
    case resourceNumberLimitExceededException(ResourceNumberLimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}
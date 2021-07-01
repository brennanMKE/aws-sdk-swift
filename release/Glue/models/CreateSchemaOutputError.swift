// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateSchemaOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case alreadyExistsException(AlreadyExistsException)
    case entityNotFoundException(EntityNotFoundException)
    case internalServiceException(InternalServiceException)
    case invalidInputException(InvalidInputException)
    case resourceNumberLimitExceededException(ResourceNumberLimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}
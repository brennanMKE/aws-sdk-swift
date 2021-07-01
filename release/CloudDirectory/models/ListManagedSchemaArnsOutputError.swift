// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListManagedSchemaArnsOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServiceException(InternalServiceException)
    case invalidArnException(InvalidArnException)
    case invalidNextTokenException(InvalidNextTokenException)
    case resourceNotFoundException(ResourceNotFoundException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
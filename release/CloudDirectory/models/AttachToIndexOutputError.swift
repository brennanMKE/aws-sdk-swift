// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AttachToIndexOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case directoryNotEnabledException(DirectoryNotEnabledException)
    case indexedAttributeMissingException(IndexedAttributeMissingException)
    case internalServiceException(InternalServiceException)
    case invalidArnException(InvalidArnException)
    case invalidAttachmentException(InvalidAttachmentException)
    case limitExceededException(LimitExceededException)
    case linkNameAlreadyInUseException(LinkNameAlreadyInUseException)
    case notIndexException(NotIndexException)
    case resourceNotFoundException(ResourceNotFoundException)
    case retryableConflictException(RetryableConflictException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
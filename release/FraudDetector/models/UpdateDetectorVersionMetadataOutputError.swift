// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateDetectorVersionMetadataOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServerException(InternalServerException)
    case throttlingException(ThrottlingException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
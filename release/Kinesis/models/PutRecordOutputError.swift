// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutRecordOutputError: Equatable {
    case invalidArgumentException(InvalidArgumentException)
    case kMSAccessDeniedException(KMSAccessDeniedException)
    case kMSDisabledException(KMSDisabledException)
    case kMSInvalidStateException(KMSInvalidStateException)
    case kMSNotFoundException(KMSNotFoundException)
    case kMSOptInRequired(KMSOptInRequired)
    case kMSThrottlingException(KMSThrottlingException)
    case provisionedThroughputExceededException(ProvisionedThroughputExceededException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
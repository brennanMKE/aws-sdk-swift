// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetComplianceSummaryOutputError: Equatable {
    case constraintViolationException(ConstraintViolationException)
    case internalServiceException(InternalServiceException)
    case invalidParameterException(InvalidParameterException)
    case throttledException(ThrottledException)
    case unknown(UnknownAWSHttpServiceError)
}
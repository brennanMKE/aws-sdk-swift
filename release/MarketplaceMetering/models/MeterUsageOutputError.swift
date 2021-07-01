// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum MeterUsageOutputError: Equatable {
    case customerNotEntitledException(CustomerNotEntitledException)
    case duplicateRequestException(DuplicateRequestException)
    case internalServiceErrorException(InternalServiceErrorException)
    case invalidEndpointRegionException(InvalidEndpointRegionException)
    case invalidProductCodeException(InvalidProductCodeException)
    case invalidTagException(InvalidTagException)
    case invalidUsageAllocationsException(InvalidUsageAllocationsException)
    case invalidUsageDimensionException(InvalidUsageDimensionException)
    case throttlingException(ThrottlingException)
    case timestampOutOfBoundsException(TimestampOutOfBoundsException)
    case unknown(UnknownAWSHttpServiceError)
}
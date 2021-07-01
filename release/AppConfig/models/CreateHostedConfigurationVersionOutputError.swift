// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateHostedConfigurationVersionOutputError: Equatable {
    case badRequestException(BadRequestException)
    case conflictException(ConflictException)
    case internalServerException(InternalServerException)
    case payloadTooLargeException(PayloadTooLargeException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeArchiveOutputError: Equatable {
    case internalException(InternalException)
    case resourceAlreadyExistsException(ResourceAlreadyExistsException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListTagsLogGroupOutputError: Equatable {
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceUnavailableException(ServiceUnavailableException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum BatchGetTracesOutputError: Equatable {
    case invalidRequestException(InvalidRequestException)
    case throttledException(ThrottledException)
    case unknown(UnknownAWSHttpServiceError)
}
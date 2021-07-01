// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteEmailIdentityOutputError: Equatable {
    case badRequestException(BadRequestException)
    case concurrentModificationException(ConcurrentModificationException)
    case notFoundException(NotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}
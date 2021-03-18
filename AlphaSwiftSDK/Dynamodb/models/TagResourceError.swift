// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum TagResourceError {
    case internalServerError(InternalServerError)
    case invalidEndpointException(InvalidEndpointException)
    case limitExceededException(LimitExceededException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

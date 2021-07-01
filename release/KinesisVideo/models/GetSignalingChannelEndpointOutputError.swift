// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetSignalingChannelEndpointOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case clientLimitExceededException(ClientLimitExceededException)
    case invalidArgumentException(InvalidArgumentException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
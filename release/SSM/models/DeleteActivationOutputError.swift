// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteActivationOutputError: Equatable {
    case internalServerError(InternalServerError)
    case invalidActivation(InvalidActivation)
    case invalidActivationId(InvalidActivationId)
    case tooManyUpdates(TooManyUpdates)
    case unknown(UnknownAWSHttpServiceError)
}
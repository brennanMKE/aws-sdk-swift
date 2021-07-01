// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StartOnDemandAppReplicationOutputError: Equatable {
    case internalError(InternalError)
    case invalidParameterException(InvalidParameterException)
    case missingRequiredParameterException(MissingRequiredParameterException)
    case operationNotPermittedException(OperationNotPermittedException)
    case unauthorizedOperationException(UnauthorizedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}
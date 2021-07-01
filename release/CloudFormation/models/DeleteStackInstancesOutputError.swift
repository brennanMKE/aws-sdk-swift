// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteStackInstancesOutputError: Equatable {
    case invalidOperationException(InvalidOperationException)
    case operationIdAlreadyExistsException(OperationIdAlreadyExistsException)
    case operationInProgressException(OperationInProgressException)
    case stackSetNotFoundException(StackSetNotFoundException)
    case staleRequestException(StaleRequestException)
    case unknown(UnknownAWSHttpServiceError)
}
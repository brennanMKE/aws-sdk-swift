// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListStackSetOperationResultsOutputError: Equatable {
    case operationNotFoundException(OperationNotFoundException)
    case stackSetNotFoundException(StackSetNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StopExecutionOutputError: Equatable {
    case executionDoesNotExist(ExecutionDoesNotExist)
    case invalidArn(InvalidArn)
    case unknown(UnknownAWSHttpServiceError)
}
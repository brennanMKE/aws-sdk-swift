// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ModifyWorkspaceStateOutputError: Equatable {
    case invalidParameterValuesException(InvalidParameterValuesException)
    case invalidResourceStateException(InvalidResourceStateException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ExportConfigurationsOutputError: Equatable {
    case authorizationErrorException(AuthorizationErrorException)
    case homeRegionNotSetException(HomeRegionNotSetException)
    case invalidParameterException(InvalidParameterException)
    case invalidParameterValueException(InvalidParameterValueException)
    case operationNotPermittedException(OperationNotPermittedException)
    case serverInternalErrorException(ServerInternalErrorException)
    case unknown(UnknownAWSHttpServiceError)
}
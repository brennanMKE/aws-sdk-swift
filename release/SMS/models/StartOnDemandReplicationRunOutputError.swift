// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StartOnDemandReplicationRunOutputError: Equatable {
    case dryRunOperationException(DryRunOperationException)
    case invalidParameterException(InvalidParameterException)
    case missingRequiredParameterException(MissingRequiredParameterException)
    case operationNotPermittedException(OperationNotPermittedException)
    case replicationRunLimitExceededException(ReplicationRunLimitExceededException)
    case unauthorizedOperationException(UnauthorizedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}
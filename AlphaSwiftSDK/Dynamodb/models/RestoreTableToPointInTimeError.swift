// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RestoreTableToPointInTimeError {
    case internalServerError(InternalServerError)
    case invalidEndpointException(InvalidEndpointException)
    case invalidRestoreTimeException(InvalidRestoreTimeException)
    case limitExceededException(LimitExceededException)
    case pointInTimeRecoveryUnavailableException(PointInTimeRecoveryUnavailableException)
    case tableAlreadyExistsException(TableAlreadyExistsException)
    case tableInUseException(TableInUseException)
    case tableNotFoundException(TableNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

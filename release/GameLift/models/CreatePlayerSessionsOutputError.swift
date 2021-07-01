// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreatePlayerSessionsOutputError: Equatable {
    case gameSessionFullException(GameSessionFullException)
    case internalServiceException(InternalServiceException)
    case invalidGameSessionStatusException(InvalidGameSessionStatusException)
    case invalidRequestException(InvalidRequestException)
    case notFoundException(NotFoundException)
    case terminalRoutingStrategyException(TerminalRoutingStrategyException)
    case unauthorizedException(UnauthorizedException)
    case unknown(UnknownAWSHttpServiceError)
}
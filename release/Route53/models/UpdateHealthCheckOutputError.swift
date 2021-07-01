// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateHealthCheckOutputError: Equatable {
    case healthCheckVersionMismatch(HealthCheckVersionMismatch)
    case invalidInput(InvalidInput)
    case noSuchHealthCheck(NoSuchHealthCheck)
    case unknown(UnknownAWSHttpServiceError)
}
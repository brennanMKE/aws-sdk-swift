// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetDeploymentGroupOutputError: Equatable {
    case applicationDoesNotExistException(ApplicationDoesNotExistException)
    case applicationNameRequiredException(ApplicationNameRequiredException)
    case deploymentConfigDoesNotExistException(DeploymentConfigDoesNotExistException)
    case deploymentGroupDoesNotExistException(DeploymentGroupDoesNotExistException)
    case deploymentGroupNameRequiredException(DeploymentGroupNameRequiredException)
    case invalidApplicationNameException(InvalidApplicationNameException)
    case invalidDeploymentGroupNameException(InvalidDeploymentGroupNameException)
    case unknown(UnknownAWSHttpServiceError)
}
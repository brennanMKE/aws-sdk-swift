// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AssociateTeamMemberOutputError: Equatable {
    case concurrentModificationException(ConcurrentModificationException)
    case invalidServiceRoleException(InvalidServiceRoleException)
    case limitExceededException(LimitExceededException)
    case projectConfigurationException(ProjectConfigurationException)
    case projectNotFoundException(ProjectNotFoundException)
    case teamMemberAlreadyAssociatedException(TeamMemberAlreadyAssociatedException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
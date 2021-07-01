// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetOrganizationConformancePackDetailedStatusOutputError: Equatable {
    case invalidLimitException(InvalidLimitException)
    case invalidNextTokenException(InvalidNextTokenException)
    case noSuchOrganizationConformancePackException(NoSuchOrganizationConformancePackException)
    case organizationAccessDeniedException(OrganizationAccessDeniedException)
    case unknown(UnknownAWSHttpServiceError)
}
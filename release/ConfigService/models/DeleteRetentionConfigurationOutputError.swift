// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteRetentionConfigurationOutputError: Equatable {
    case invalidParameterValueException(InvalidParameterValueException)
    case noSuchRetentionConfigurationException(NoSuchRetentionConfigurationException)
    case unknown(UnknownAWSHttpServiceError)
}
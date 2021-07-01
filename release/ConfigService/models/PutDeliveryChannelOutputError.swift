// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutDeliveryChannelOutputError: Equatable {
    case insufficientDeliveryPolicyException(InsufficientDeliveryPolicyException)
    case invalidDeliveryChannelNameException(InvalidDeliveryChannelNameException)
    case invalidS3KeyPrefixException(InvalidS3KeyPrefixException)
    case invalidS3KmsKeyArnException(InvalidS3KmsKeyArnException)
    case invalidSNSTopicARNException(InvalidSNSTopicARNException)
    case maxNumberOfDeliveryChannelsExceededException(MaxNumberOfDeliveryChannelsExceededException)
    case noAvailableConfigurationRecorderException(NoAvailableConfigurationRecorderException)
    case noSuchBucketException(NoSuchBucketException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListTrafficPolicyInstancesByHostedZoneOutputError: Equatable {
    case invalidInput(InvalidInput)
    case noSuchHostedZone(NoSuchHostedZone)
    case noSuchTrafficPolicyInstance(NoSuchTrafficPolicyInstance)
    case unknown(UnknownAWSHttpServiceError)
}
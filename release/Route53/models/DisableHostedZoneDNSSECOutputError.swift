// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DisableHostedZoneDNSSECOutputError: Equatable {
    case concurrentModification(ConcurrentModification)
    case dNSSECNotFound(DNSSECNotFound)
    case invalidArgument(InvalidArgument)
    case invalidKeySigningKeyStatus(InvalidKeySigningKeyStatus)
    case invalidKMSArn(InvalidKMSArn)
    case keySigningKeyInParentDSRecord(KeySigningKeyInParentDSRecord)
    case noSuchHostedZone(NoSuchHostedZone)
    case unknown(UnknownAWSHttpServiceError)
}
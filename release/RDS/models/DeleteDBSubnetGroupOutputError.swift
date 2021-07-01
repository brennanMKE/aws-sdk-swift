// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteDBSubnetGroupOutputError: Equatable {
    case dBSubnetGroupNotFoundFault(DBSubnetGroupNotFoundFault)
    case invalidDBSubnetGroupStateFault(InvalidDBSubnetGroupStateFault)
    case invalidDBSubnetStateFault(InvalidDBSubnetStateFault)
    case unknown(UnknownAWSHttpServiceError)
}
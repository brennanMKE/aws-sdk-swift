// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ResetClusterParameterGroupOutputError: Equatable {
    case clusterParameterGroupNotFoundFault(ClusterParameterGroupNotFoundFault)
    case invalidClusterParameterGroupStateFault(InvalidClusterParameterGroupStateFault)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateClusterParameterGroupOutputError: Equatable {
    case clusterParameterGroupAlreadyExistsFault(ClusterParameterGroupAlreadyExistsFault)
    case clusterParameterGroupQuotaExceededFault(ClusterParameterGroupQuotaExceededFault)
    case invalidTagFault(InvalidTagFault)
    case tagLimitExceededFault(TagLimitExceededFault)
    case unknown(UnknownAWSHttpServiceError)
}
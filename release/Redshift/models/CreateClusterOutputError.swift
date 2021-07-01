// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateClusterOutputError: Equatable {
    case clusterAlreadyExistsFault(ClusterAlreadyExistsFault)
    case clusterParameterGroupNotFoundFault(ClusterParameterGroupNotFoundFault)
    case clusterQuotaExceededFault(ClusterQuotaExceededFault)
    case clusterSecurityGroupNotFoundFault(ClusterSecurityGroupNotFoundFault)
    case clusterSubnetGroupNotFoundFault(ClusterSubnetGroupNotFoundFault)
    case dependentServiceRequestThrottlingFault(DependentServiceRequestThrottlingFault)
    case hsmClientCertificateNotFoundFault(HsmClientCertificateNotFoundFault)
    case hsmConfigurationNotFoundFault(HsmConfigurationNotFoundFault)
    case insufficientClusterCapacityFault(InsufficientClusterCapacityFault)
    case invalidClusterSubnetGroupStateFault(InvalidClusterSubnetGroupStateFault)
    case invalidClusterTrackFault(InvalidClusterTrackFault)
    case invalidElasticIpFault(InvalidElasticIpFault)
    case invalidRetentionPeriodFault(InvalidRetentionPeriodFault)
    case invalidSubnet(InvalidSubnet)
    case invalidTagFault(InvalidTagFault)
    case invalidVPCNetworkStateFault(InvalidVPCNetworkStateFault)
    case limitExceededFault(LimitExceededFault)
    case numberOfNodesPerClusterLimitExceededFault(NumberOfNodesPerClusterLimitExceededFault)
    case numberOfNodesQuotaExceededFault(NumberOfNodesQuotaExceededFault)
    case snapshotScheduleNotFoundFault(SnapshotScheduleNotFoundFault)
    case tagLimitExceededFault(TagLimitExceededFault)
    case unauthorizedOperation(UnauthorizedOperation)
    case unknown(UnknownAWSHttpServiceError)
}
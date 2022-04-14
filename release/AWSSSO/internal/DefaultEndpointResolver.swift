// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : AWSClientRuntime.EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSClientRuntime.AWSEndpoint {
        return try AWSClientRuntime.AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "portal.sso.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.ap-southeast-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-southeast-1")
            ),
            "ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.ap-southeast-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-southeast-2")
            ),
            "ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.ca-central-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ca-central-1")
            ),
            "eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.eu-central-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-central-1")
            ),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.eu-west-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-west-1")
            ),
            "eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.eu-west-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-west-2")
            ),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.us-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-1")
            ),
            "us-east-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.us-east-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-2")
            ),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "portal.sso.us-west-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-west-2")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "portal.sso.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "portal.sso.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "portal.sso.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "portal.sso.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
]
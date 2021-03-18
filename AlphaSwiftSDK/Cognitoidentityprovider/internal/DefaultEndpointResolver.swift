// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSEndpoint {
        return try AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "cognito-idp.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-northeast-1": ServiceEndpointMetadata(),
            "ap-northeast-2": ServiceEndpointMetadata(),
            "ap-south-1": ServiceEndpointMetadata(),
            "ap-southeast-1": ServiceEndpointMetadata(),
            "ap-southeast-2": ServiceEndpointMetadata(),
            "ca-central-1": ServiceEndpointMetadata(),
            "eu-central-1": ServiceEndpointMetadata(),
            "eu-north-1": ServiceEndpointMetadata(),
            "eu-west-1": ServiceEndpointMetadata(),
            "eu-west-2": ServiceEndpointMetadata(),
            "eu-west-3": ServiceEndpointMetadata(),
            "fips-us-east-1": ServiceEndpointMetadata(
                hostName: "cognito-idp-fips.us-east-1.amazonaws.com",
                credentialScope: CredentialScope(region: "us-east-1")
            ),
            "fips-us-east-2": ServiceEndpointMetadata(
                hostName: "cognito-idp-fips.us-east-2.amazonaws.com",
                credentialScope: CredentialScope(region: "us-east-2")
            ),
            "fips-us-west-2": ServiceEndpointMetadata(
                hostName: "cognito-idp-fips.us-west-2.amazonaws.com",
                credentialScope: CredentialScope(region: "us-west-2")
            ),
            "us-east-1": ServiceEndpointMetadata(),
            "us-east-2": ServiceEndpointMetadata(),
            "us-west-2": ServiceEndpointMetadata(),
        ]
    ),
    Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "cognito-idp.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "cognito-idp.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "cognito-idp.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "cognito-idp.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "fips-us-gov-west-1": ServiceEndpointMetadata(
                hostName: "cognito-idp-fips.us-gov-west-1.amazonaws.com",
                credentialScope: CredentialScope(region: "us-gov-west-1")
            ),
            "us-gov-west-1": ServiceEndpointMetadata(),
        ]
    ),
]
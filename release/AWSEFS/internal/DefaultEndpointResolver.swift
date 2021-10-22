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
            hostName: "elasticfilesystem.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "af-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-north-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-3": AWSClientRuntime.ServiceEndpointMetadata(),
            "fips-af-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.af-south-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "af-south-1")
            ),
            "fips-ap-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-east-1")
            ),
            "fips-ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-northeast-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-northeast-1")
            ),
            "fips-ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-northeast-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-northeast-2")
            ),
            "fips-ap-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-south-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-south-1")
            ),
            "fips-ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-southeast-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-southeast-1")
            ),
            "fips-ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ap-southeast-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ap-southeast-2")
            ),
            "fips-ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.ca-central-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "ca-central-1")
            ),
            "fips-eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-central-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-central-1")
            ),
            "fips-eu-north-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-north-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-north-1")
            ),
            "fips-eu-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-south-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-south-1")
            ),
            "fips-eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-west-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-west-1")
            ),
            "fips-eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-west-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-west-2")
            ),
            "fips-eu-west-3": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.eu-west-3.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "eu-west-3")
            ),
            "fips-me-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.me-south-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "me-south-1")
            ),
            "fips-sa-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.sa-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "sa-east-1")
            ),
            "fips-us-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-1")
            ),
            "fips-us-east-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-east-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-2")
            ),
            "fips-us-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-west-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-west-1")
            ),
            "fips-us-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-west-2.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-west-2")
            ),
            "me-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "sa-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-east-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "elasticfilesystem.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "cn-north-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "cn-northwest-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "fips-cn-north-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.cn-north-1.amazonaws.com.cn",
                credentialScope: AWSClientRuntime.CredentialScope(region: "cn-north-1")
            ),
            "fips-cn-northwest-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.cn-northwest-1.amazonaws.com.cn",
                credentialScope: AWSClientRuntime.CredentialScope(region: "cn-northwest-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "elasticfilesystem.{region}.c2s.ic.gov",
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
            hostName: "elasticfilesystem.{region}.sc2s.sgov.gov",
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
            hostName: "elasticfilesystem.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "fips-us-gov-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-gov-east-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-east-1")
            ),
            "fips-us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "elasticfilesystem-fips.us-gov-west-1.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-west-1")
            ),
            "us-gov-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
]

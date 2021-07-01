// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Ec2Config: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case securityGroupArns = "SecurityGroupArns"
        case subnetArn = "SubnetArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let securityGroupArns = securityGroupArns {
            var securityGroupArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .securityGroupArns)
            for ec2securitygrouparnlist0 in securityGroupArns {
                try securityGroupArnsContainer.encode(ec2securitygrouparnlist0)
            }
        }
        if let subnetArn = subnetArn {
            try encodeContainer.encode(subnetArn, forKey: .subnetArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subnetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subnetArn)
        subnetArn = subnetArnDecoded
        let securityGroupArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .securityGroupArns)
        var securityGroupArnsDecoded0:[String]? = nil
        if let securityGroupArnsContainer = securityGroupArnsContainer {
            securityGroupArnsDecoded0 = [String]()
            for string0 in securityGroupArnsContainer {
                if let string0 = string0 {
                    securityGroupArnsDecoded0?.append(string0)
                }
            }
        }
        securityGroupArns = securityGroupArnsDecoded0
    }
}
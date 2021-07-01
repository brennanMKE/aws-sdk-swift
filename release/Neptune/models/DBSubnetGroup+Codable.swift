// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DBSubnetGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupArn = "DBSubnetGroupArn"
        case dBSubnetGroupDescription = "DBSubnetGroupDescription"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case subnetGroupStatus = "SubnetGroupStatus"
        case subnets = "Subnets"
        case vpcId = "VpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dBSubnetGroupArn = dBSubnetGroupArn {
            try container.encode(dBSubnetGroupArn, forKey: Key("DBSubnetGroupArn"))
        }
        if let dBSubnetGroupDescription = dBSubnetGroupDescription {
            try container.encode(dBSubnetGroupDescription, forKey: Key("DBSubnetGroupDescription"))
        }
        if let dBSubnetGroupName = dBSubnetGroupName {
            try container.encode(dBSubnetGroupName, forKey: Key("DBSubnetGroupName"))
        }
        if let subnetGroupStatus = subnetGroupStatus {
            try container.encode(subnetGroupStatus, forKey: Key("SubnetGroupStatus"))
        }
        if let subnets = subnets {
            var subnetsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Subnets"))
            for (index0, subnet0) in subnets.enumerated() {
                try subnetsContainer.encode(subnet0, forKey: Key("Subnet.\(index0.advanced(by: 1))"))
            }
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dBSubnetGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dBSubnetGroupName)
        dBSubnetGroupName = dBSubnetGroupNameDecoded
        let dBSubnetGroupDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dBSubnetGroupDescription)
        dBSubnetGroupDescription = dBSubnetGroupDescriptionDecoded
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
        let subnetGroupStatusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subnetGroupStatus)
        subnetGroupStatus = subnetGroupStatusDecoded
        if containerValues.contains(.subnets) {
            struct KeyVal0{struct Subnet{}}
            let subnetsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Subnet>.CodingKeys.self, forKey: .subnets)
            if let subnetsWrappedContainer = subnetsWrappedContainer {
                let subnetsContainer = try subnetsWrappedContainer.decodeIfPresent([Subnet].self, forKey: .member)
                var subnetsBuffer:[Subnet]? = nil
                if let subnetsContainer = subnetsContainer {
                    subnetsBuffer = [Subnet]()
                    for structureContainer0 in subnetsContainer {
                        subnetsBuffer?.append(structureContainer0)
                    }
                }
                subnets = subnetsBuffer
            } else {
                subnets = []
            }
        } else {
            subnets = nil
        }
        let dBSubnetGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dBSubnetGroupArn)
        dBSubnetGroupArn = dBSubnetGroupArnDecoded
    }
}
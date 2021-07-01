// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAccountLimitsOutputResponseBody: Equatable {
    public let maxNumberOfAutoScalingGroups: Int?
    public let maxNumberOfLaunchConfigurations: Int?
    public let numberOfAutoScalingGroups: Int?
    public let numberOfLaunchConfigurations: Int?
}

extension DescribeAccountLimitsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxNumberOfAutoScalingGroups = "MaxNumberOfAutoScalingGroups"
        case maxNumberOfLaunchConfigurations = "MaxNumberOfLaunchConfigurations"
        case numberOfAutoScalingGroups = "NumberOfAutoScalingGroups"
        case numberOfLaunchConfigurations = "NumberOfLaunchConfigurations"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeAccountLimitsResult"))
        let maxNumberOfAutoScalingGroupsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxNumberOfAutoScalingGroups)
        maxNumberOfAutoScalingGroups = maxNumberOfAutoScalingGroupsDecoded
        let maxNumberOfLaunchConfigurationsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxNumberOfLaunchConfigurations)
        maxNumberOfLaunchConfigurations = maxNumberOfLaunchConfigurationsDecoded
        let numberOfAutoScalingGroupsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .numberOfAutoScalingGroups)
        numberOfAutoScalingGroups = numberOfAutoScalingGroupsDecoded
        let numberOfLaunchConfigurationsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .numberOfLaunchConfigurations)
        numberOfLaunchConfigurations = numberOfLaunchConfigurationsDecoded
    }
}
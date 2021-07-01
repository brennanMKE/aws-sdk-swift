// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeContainerInstancesInputBody: Equatable {
    public let cluster: String?
    public let containerInstances: [String]?
    public let include: [ContainerInstanceField]?
}

extension DescribeContainerInstancesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case include
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cluster)
        cluster = clusterDecoded
        let containerInstancesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .containerInstances)
        var containerInstancesDecoded0:[String]? = nil
        if let containerInstancesContainer = containerInstancesContainer {
            containerInstancesDecoded0 = [String]()
            for string0 in containerInstancesContainer {
                if let string0 = string0 {
                    containerInstancesDecoded0?.append(string0)
                }
            }
        }
        containerInstances = containerInstancesDecoded0
        let includeContainer = try containerValues.decodeIfPresent([ContainerInstanceField?].self, forKey: .include)
        var includeDecoded0:[ContainerInstanceField]? = nil
        if let includeContainer = includeContainer {
            includeDecoded0 = [ContainerInstanceField]()
            for string0 in includeContainer {
                if let string0 = string0 {
                    includeDecoded0?.append(string0)
                }
            }
        }
        include = includeDecoded0
    }
}
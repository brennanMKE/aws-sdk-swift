// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateProvisionedProductInputBody: Equatable {
    public let acceptLanguage: String?
    public let provisionedProductName: String?
    public let provisionedProductId: String?
    public let productId: String?
    public let productName: String?
    public let provisioningArtifactId: String?
    public let provisioningArtifactName: String?
    public let pathId: String?
    public let pathName: String?
    public let provisioningParameters: [UpdateProvisioningParameter]?
    public let provisioningPreferences: UpdateProvisioningPreferences?
    public let tags: [Tag]?
    public let updateToken: String?
}

extension UpdateProvisionedProductInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case pathId = "PathId"
        case pathName = "PathName"
        case productId = "ProductId"
        case productName = "ProductName"
        case provisionedProductId = "ProvisionedProductId"
        case provisionedProductName = "ProvisionedProductName"
        case provisioningArtifactId = "ProvisioningArtifactId"
        case provisioningArtifactName = "ProvisioningArtifactName"
        case provisioningParameters = "ProvisioningParameters"
        case provisioningPreferences = "ProvisioningPreferences"
        case tags = "Tags"
        case updateToken = "UpdateToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
        let provisionedProductNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionedProductName)
        provisionedProductName = provisionedProductNameDecoded
        let provisionedProductIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionedProductId)
        provisionedProductId = provisionedProductIdDecoded
        let productIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productId)
        productId = productIdDecoded
        let productNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productName)
        productName = productNameDecoded
        let provisioningArtifactIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisioningArtifactId)
        provisioningArtifactId = provisioningArtifactIdDecoded
        let provisioningArtifactNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisioningArtifactName)
        provisioningArtifactName = provisioningArtifactNameDecoded
        let pathIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pathId)
        pathId = pathIdDecoded
        let pathNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pathName)
        pathName = pathNameDecoded
        let provisioningParametersContainer = try containerValues.decodeIfPresent([UpdateProvisioningParameter?].self, forKey: .provisioningParameters)
        var provisioningParametersDecoded0:[UpdateProvisioningParameter]? = nil
        if let provisioningParametersContainer = provisioningParametersContainer {
            provisioningParametersDecoded0 = [UpdateProvisioningParameter]()
            for structure0 in provisioningParametersContainer {
                if let structure0 = structure0 {
                    provisioningParametersDecoded0?.append(structure0)
                }
            }
        }
        provisioningParameters = provisioningParametersDecoded0
        let provisioningPreferencesDecoded = try containerValues.decodeIfPresent(UpdateProvisioningPreferences.self, forKey: .provisioningPreferences)
        provisioningPreferences = provisioningPreferencesDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let updateTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .updateToken)
        updateToken = updateTokenDecoded
    }
}
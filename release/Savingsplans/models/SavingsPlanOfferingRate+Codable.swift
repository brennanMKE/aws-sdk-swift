// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SavingsPlanOfferingRate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case operation
        case productType
        case properties
        case rate
        case savingsPlanOffering
        case serviceCode
        case unit
        case usageType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let operation = operation {
            try encodeContainer.encode(operation, forKey: .operation)
        }
        if let productType = productType {
            try encodeContainer.encode(productType.rawValue, forKey: .productType)
        }
        if let properties = properties {
            var propertiesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .properties)
            for savingsplanofferingratepropertylist0 in properties {
                try propertiesContainer.encode(savingsplanofferingratepropertylist0)
            }
        }
        if let rate = rate {
            try encodeContainer.encode(rate, forKey: .rate)
        }
        if let savingsPlanOffering = savingsPlanOffering {
            try encodeContainer.encode(savingsPlanOffering, forKey: .savingsPlanOffering)
        }
        if let serviceCode = serviceCode {
            try encodeContainer.encode(serviceCode.rawValue, forKey: .serviceCode)
        }
        if let unit = unit {
            try encodeContainer.encode(unit.rawValue, forKey: .unit)
        }
        if let usageType = usageType {
            try encodeContainer.encode(usageType, forKey: .usageType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let savingsPlanOfferingDecoded = try containerValues.decodeIfPresent(ParentSavingsPlanOffering.self, forKey: .savingsPlanOffering)
        savingsPlanOffering = savingsPlanOfferingDecoded
        let rateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rate)
        rate = rateDecoded
        let unitDecoded = try containerValues.decodeIfPresent(SavingsPlanRateUnit.self, forKey: .unit)
        unit = unitDecoded
        let productTypeDecoded = try containerValues.decodeIfPresent(SavingsPlanProductType.self, forKey: .productType)
        productType = productTypeDecoded
        let serviceCodeDecoded = try containerValues.decodeIfPresent(SavingsPlanRateServiceCode.self, forKey: .serviceCode)
        serviceCode = serviceCodeDecoded
        let usageTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .usageType)
        usageType = usageTypeDecoded
        let operationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .operation)
        operation = operationDecoded
        let propertiesContainer = try containerValues.decodeIfPresent([SavingsPlanOfferingRateProperty?].self, forKey: .properties)
        var propertiesDecoded0:[SavingsPlanOfferingRateProperty]? = nil
        if let propertiesContainer = propertiesContainer {
            propertiesDecoded0 = [SavingsPlanOfferingRateProperty]()
            for structure0 in propertiesContainer {
                if let structure0 = structure0 {
                    propertiesDecoded0?.append(structure0)
                }
            }
        }
        properties = propertiesDecoded0
    }
}
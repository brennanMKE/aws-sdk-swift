// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3Bucket: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowsUnencryptedObjectUploads = "allowsUnencryptedObjectUploads"
        case arn = "arn"
        case createdAt = "createdAt"
        case defaultServerSideEncryption = "defaultServerSideEncryption"
        case name = "name"
        case owner = "owner"
        case publicAccess = "publicAccess"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allowsUnencryptedObjectUploads = allowsUnencryptedObjectUploads {
            try encodeContainer.encode(allowsUnencryptedObjectUploads.rawValue, forKey: .allowsUnencryptedObjectUploads)
        }
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let defaultServerSideEncryption = defaultServerSideEncryption {
            try encodeContainer.encode(defaultServerSideEncryption, forKey: .defaultServerSideEncryption)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let owner = owner {
            try encodeContainer.encode(owner, forKey: .owner)
        }
        if let publicAccess = publicAccess {
            try encodeContainer.encode(publicAccess, forKey: .publicAccess)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for keyvaluepairlist0 in tags {
                try tagsContainer.encode(keyvaluepairlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let allowsUnencryptedObjectUploadsDecoded = try containerValues.decodeIfPresent(AllowsUnencryptedObjectUploads.self, forKey: .allowsUnencryptedObjectUploads)
        allowsUnencryptedObjectUploads = allowsUnencryptedObjectUploadsDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let defaultServerSideEncryptionDecoded = try containerValues.decodeIfPresent(ServerSideEncryption.self, forKey: .defaultServerSideEncryption)
        defaultServerSideEncryption = defaultServerSideEncryptionDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let ownerDecoded = try containerValues.decodeIfPresent(S3BucketOwner.self, forKey: .owner)
        owner = ownerDecoded
        let publicAccessDecoded = try containerValues.decodeIfPresent(BucketPublicAccess.self, forKey: .publicAccess)
        publicAccess = publicAccessDecoded
        let tagsContainer = try containerValues.decodeIfPresent([KeyValuePair?].self, forKey: .tags)
        var tagsDecoded0:[KeyValuePair]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [KeyValuePair]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AnalyticsS3BucketDestination: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bucketAccountId = "BucketAccountId"
        case format = "Format"
        case prefix = "Prefix"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let bucket = bucket {
            try container.encode(bucket, forKey: Key("bucket"))
        }
        if let bucketAccountId = bucketAccountId {
            try container.encode(bucketAccountId, forKey: Key("bucketAccountId"))
        }
        if let format = format {
            try container.encode(format, forKey: Key("format"))
        }
        if let prefix = prefix {
            try container.encode(prefix, forKey: Key("prefix"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let formatDecoded = try containerValues.decodeIfPresent(AnalyticsS3ExportFileFormat.self, forKey: .format)
        format = formatDecoded
        let bucketAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucketAccountId)
        bucketAccountId = bucketAccountIdDecoded
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let prefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .prefix)
        prefix = prefixDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateBotVersionOutputResponseBody: Equatable {
    public let name: String?
    public let description: String?
    public let intents: [Intent]?
    public let clarificationPrompt: Prompt?
    public let abortStatement: Statement?
    public let status: Status?
    public let failureReason: String?
    public let lastUpdatedDate: Date?
    public let createdDate: Date?
    public let idleSessionTTLInSeconds: Int?
    public let voiceId: String?
    public let checksum: String?
    public let version: String?
    public let locale: Locale?
    public let childDirected: Bool?
    public let enableModelImprovements: Bool?
    public let detectSentiment: Bool?
}

extension CreateBotVersionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case abortStatement
        case checksum
        case childDirected
        case clarificationPrompt
        case createdDate
        case description
        case detectSentiment
        case enableModelImprovements
        case failureReason
        case idleSessionTTLInSeconds
        case intents
        case lastUpdatedDate
        case locale
        case name
        case status
        case version
        case voiceId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let intentsContainer = try containerValues.decodeIfPresent([Intent?].self, forKey: .intents)
        var intentsDecoded0:[Intent]? = nil
        if let intentsContainer = intentsContainer {
            intentsDecoded0 = [Intent]()
            for structure0 in intentsContainer {
                if let structure0 = structure0 {
                    intentsDecoded0?.append(structure0)
                }
            }
        }
        intents = intentsDecoded0
        let clarificationPromptDecoded = try containerValues.decodeIfPresent(Prompt.self, forKey: .clarificationPrompt)
        clarificationPrompt = clarificationPromptDecoded
        let abortStatementDecoded = try containerValues.decodeIfPresent(Statement.self, forKey: .abortStatement)
        abortStatement = abortStatementDecoded
        let statusDecoded = try containerValues.decodeIfPresent(Status.self, forKey: .status)
        status = statusDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
        let lastUpdatedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDate)
        lastUpdatedDate = lastUpdatedDateDecoded
        let createdDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdDate)
        createdDate = createdDateDecoded
        let idleSessionTTLInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .idleSessionTTLInSeconds)
        idleSessionTTLInSeconds = idleSessionTTLInSecondsDecoded
        let voiceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .voiceId)
        voiceId = voiceIdDecoded
        let checksumDecoded = try containerValues.decodeIfPresent(String.self, forKey: .checksum)
        checksum = checksumDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let localeDecoded = try containerValues.decodeIfPresent(Locale.self, forKey: .locale)
        locale = localeDecoded
        let childDirectedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .childDirected)
        childDirected = childDirectedDecoded
        let enableModelImprovementsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enableModelImprovements)
        enableModelImprovements = enableModelImprovementsDecoded
        let detectSentimentDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .detectSentiment)
        detectSentiment = detectSentimentDecoded
    }
}
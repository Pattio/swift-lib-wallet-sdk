import ObjectMapper
import PayseraCommonSDK

public class PSTransactionFilter: PSBaseFilter {
    
    public var status: String?
    public var from: String?
    public var to: String?
    public var locationId: Int?
    public var projectId: Int?
    
    public override func mapping(map: Map) {
        super.mapping(map: map)
        status       <- map["status"]
        from         <- map["from"]
        to           <- map["to"]
        locationId   <- map["location_id"]
        projectId    <- map["project_id"]
    }
}

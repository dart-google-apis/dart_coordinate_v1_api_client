part of coordinate_v1_api_client;

/** Custom field. */
class CustomField {

  /** Custom field id. */
  String customFieldId;

  /** Identifies this object as a custom field. */
  String kind;

  /** Custom field value. */
  String value;

  /** Create new CustomField from JSON data */
  CustomField.fromJson(Map json) {
    if (json.containsKey("customFieldId")) {
      customFieldId = json["customFieldId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for CustomField */
  Map toJson() {
    var output = new Map();

    if (customFieldId != null) {
      output["customFieldId"] = customFieldId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of CustomField */
  String toString() => JSON.stringify(this.toJson());

}

/** Custom field definition. */
class CustomFieldDef {

  /** Whether the field is enabled. */
  bool enabled;

  /** Custom field id. */
  String id;

  /** Identifies this object as a custom field definition. */
  String kind;

  /** Custom field name. */
  String name;

  /** Whether the field is required for checkout. */
  bool requiredForCheckout;

  /** Custom field type. */
  String type;

  /** Create new CustomFieldDef from JSON data */
  CustomFieldDef.fromJson(Map json) {
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("requiredForCheckout")) {
      requiredForCheckout = json["requiredForCheckout"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CustomFieldDef */
  Map toJson() {
    var output = new Map();

    if (enabled != null) {
      output["enabled"] = enabled;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (requiredForCheckout != null) {
      output["requiredForCheckout"] = requiredForCheckout;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CustomFieldDef */
  String toString() => JSON.stringify(this.toJson());

}

/** Collection of custom field definitions for a team. */
class CustomFieldDefListResponse {

  /** Collection of custom field definitions in a team. */
  List<CustomFieldDef> items;

  /** Identifies this object as a collection of custom field definitions in a team. */
  String kind;

  /** Create new CustomFieldDefListResponse from JSON data */
  CustomFieldDefListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CustomFieldDef.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomFieldDefListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomFieldDefListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Collection of custom fields. */
class CustomFields {

  /** Collection of custom fields. */
  List<CustomField> customField;

  /** Identifies this object as a collection of custom fields. */
  String kind;

  /** Create new CustomFields from JSON data */
  CustomFields.fromJson(Map json) {
    if (json.containsKey("customField")) {
      customField = [];
      json["customField"].forEach((item) {
        customField.add(new CustomField.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomFields */
  Map toJson() {
    var output = new Map();

    if (customField != null) {
      output["customField"] = new List();
      customField.forEach((item) {
        output["customField"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomFields */
  String toString() => JSON.stringify(this.toJson());

}

/** A job. */
class Job {

  /** Job id. */
  String id;

  /** List of job changes since it was created. The first change corresponds to the state of the job when it was created. */
  List<JobChange> jobChange;

  /** Identifies this object as a job. */
  String kind;

  /** Current job state. */
  JobState state;

  /** Create new Job from JSON data */
  Job.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobChange")) {
      jobChange = [];
      json["jobChange"].forEach((item) {
        jobChange.add(new JobChange.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("state")) {
      state = new JobState.fromJson(json["state"]);
    }
  }

  /** Create JSON Object for Job */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (jobChange != null) {
      output["jobChange"] = new List();
      jobChange.forEach((item) {
        output["jobChange"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (state != null) {
      output["state"] = state.toJson();
    }

    return output;
  }

  /** Return String representation of Job */
  String toString() => JSON.stringify(this.toJson());

}

/** Change to a job. For example assigning the job to a different worker. */
class JobChange {

  /** Identifies this object as a job change. */
  String kind;

  /** Change applied to the job. Only the fields that were changed are set. */
  JobState state;

  /** Time at which this change was applied. */
  String timestamp;

  /** Create new JobChange from JSON data */
  JobChange.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("state")) {
      state = new JobState.fromJson(json["state"]);
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
  }

  /** Create JSON Object for JobChange */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (state != null) {
      output["state"] = state.toJson();
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }

    return output;
  }

  /** Return String representation of JobChange */
  String toString() => JSON.stringify(this.toJson());

}

/** Response from a List Jobs request. */
class JobListResponse {

  /** Jobs in the collection. */
  List<Job> items;

  /** Identifies this object as a list of jobs. */
  String kind;

  /** A token to provide to get the next page of results. */
  String nextPageToken;

  /** Create new JobListResponse from JSON data */
  JobListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Job.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for JobListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of JobListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Current state of a job. */
class JobState {

  /** Email address of the assignee. */
  String assignee;

  /** Custom fields. */
  CustomFields customFields;

  /** Customer name. */
  String customerName;

  /** Customer phone number. */
  String customerPhoneNumber;

  /** Identifies this object as a job state. */
  String kind;

  /** Job location. */
  Location location;

  /** Note added to the job. */
  List<String> note;

  /** Job progress. */
  String progress;

  /** Job title. */
  String title;

  /** Create new JobState from JSON data */
  JobState.fromJson(Map json) {
    if (json.containsKey("assignee")) {
      assignee = json["assignee"];
    }
    if (json.containsKey("customFields")) {
      customFields = new CustomFields.fromJson(json["customFields"]);
    }
    if (json.containsKey("customerName")) {
      customerName = json["customerName"];
    }
    if (json.containsKey("customerPhoneNumber")) {
      customerPhoneNumber = json["customerPhoneNumber"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = new Location.fromJson(json["location"]);
    }
    if (json.containsKey("note")) {
      note = [];
      json["note"].forEach((item) {
        note.add(item);
      });
    }
    if (json.containsKey("progress")) {
      progress = json["progress"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for JobState */
  Map toJson() {
    var output = new Map();

    if (assignee != null) {
      output["assignee"] = assignee;
    }
    if (customFields != null) {
      output["customFields"] = customFields.toJson();
    }
    if (customerName != null) {
      output["customerName"] = customerName;
    }
    if (customerPhoneNumber != null) {
      output["customerPhoneNumber"] = customerPhoneNumber;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location.toJson();
    }
    if (note != null) {
      output["note"] = new List();
      note.forEach((item) {
        output["note"].add(item);
      });
    }
    if (progress != null) {
      output["progress"] = progress;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of JobState */
  String toString() => JSON.stringify(this.toJson());

}

/** Location of a job. */
class Location {

  /** Address. */
  List<String> addressLine;

  /** Identifies this object as a location. */
  String kind;

  /** Latitude. */
  num lat;

  /** Longitude. */
  num lng;

  /** Create new Location from JSON data */
  Location.fromJson(Map json) {
    if (json.containsKey("addressLine")) {
      addressLine = [];
      json["addressLine"].forEach((item) {
        addressLine.add(item);
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lat")) {
      lat = json["lat"];
    }
    if (json.containsKey("lng")) {
      lng = json["lng"];
    }
  }

  /** Create JSON Object for Location */
  Map toJson() {
    var output = new Map();

    if (addressLine != null) {
      output["addressLine"] = new List();
      addressLine.forEach((item) {
        output["addressLine"].add(item);
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lat != null) {
      output["lat"] = lat;
    }
    if (lng != null) {
      output["lng"] = lng;
    }

    return output;
  }

  /** Return String representation of Location */
  String toString() => JSON.stringify(this.toJson());

}

/** Response from a List Locations request. */
class LocationListResponse {

  /** Locations in the collection. */
  List<LocationRecord> items;

  /** Identifies this object as a list of locations. */
  String kind;

  /** A token to provide to get the next page of results. */
  String nextPageToken;

  /** General pagination information. */
  PageInfo pageInfo;

  /** Pagination information for token pagination. */
  TokenPagination tokenPagination;

  /** Create new LocationListResponse from JSON data */
  LocationListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new LocationRecord.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(json["tokenPagination"]);
    }
  }

  /** Create JSON Object for LocationListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      output["tokenPagination"] = tokenPagination.toJson();
    }

    return output;
  }

  /** Return String representation of LocationListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Recorded location of a worker. */
class LocationRecord {

  /** The collection time in milliseconds since the epoch. */
  String collectionTime;

  /** The location accuracy in meters. This is the radius of a 95% confidence interval around the location measurement. */
  num confidenceRadius;

  /** Identifies this object as a location. */
  String kind;

  /** Latitude. */
  num latitude;

  /** Longitude. */
  num longitude;

  /** Create new LocationRecord from JSON data */
  LocationRecord.fromJson(Map json) {
    if (json.containsKey("collectionTime")) {
      collectionTime = json["collectionTime"];
    }
    if (json.containsKey("confidenceRadius")) {
      confidenceRadius = json["confidenceRadius"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for LocationRecord */
  Map toJson() {
    var output = new Map();

    if (collectionTime != null) {
      output["collectionTime"] = collectionTime;
    }
    if (confidenceRadius != null) {
      output["confidenceRadius"] = confidenceRadius;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of LocationRecord */
  String toString() => JSON.stringify(this.toJson());

}

/** Page information. */
class PageInfo {

  /** Identifies this object as page information. */
  String kind;

  /** Number of results per page. */
  int resultPerPage;

  /** Page start index. */
  int startIndex;

  /** Number of results available. */
  int totalResults;

  /** Create new PageInfo from JSON data */
  PageInfo.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("resultPerPage")) {
      resultPerPage = json["resultPerPage"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for PageInfo */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (resultPerPage != null) {
      output["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of PageInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Job schedule. */
class Schedule {

  /** Whether the job is scheduled for the whole day. Time of day in start/end times is ignored if this is true. */
  bool allDay;

  /** Scheduled end time in milliseconds since epoch. */
  String endTime;

  /** Identifies this object as a job schedule. */
  String kind;

  /** Scheduled start time in milliseconds since epoch. */
  String startTime;

  /** Create new Schedule from JSON data */
  Schedule.fromJson(Map json) {
    if (json.containsKey("allDay")) {
      allDay = json["allDay"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for Schedule */
  Map toJson() {
    var output = new Map();

    if (allDay != null) {
      output["allDay"] = allDay;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of Schedule */
  String toString() => JSON.stringify(this.toJson());

}

/** Pagination information. */
class TokenPagination {

  /** Identifies this object as pagination information. */
  String kind;

  /** A token to provide to get the next page of results. */
  String nextPageToken;

  /** A token to provide to get the previous page of results. */
  String previousPageToken;

  /** Create new TokenPagination from JSON data */
  TokenPagination.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("previousPageToken")) {
      previousPageToken = json["previousPageToken"];
    }
  }

  /** Create JSON Object for TokenPagination */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      output["previousPageToken"] = previousPageToken;
    }

    return output;
  }

  /** Return String representation of TokenPagination */
  String toString() => JSON.stringify(this.toJson());

}

/** A worker in a Coordinate team. */
class Worker {

  /** Worker email address. */
  String id;

  /** Identifies this object as a worker. */
  String kind;

  /** Create new Worker from JSON data */
  Worker.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Worker */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Worker */
  String toString() => JSON.stringify(this.toJson());

}

/** Response from a List Workers request. */
class WorkerListResponse {

  /** Workers in the collection. */
  List<Worker> items;

  /** Identifies this object as a list of workers. */
  String kind;

  /** Create new WorkerListResponse from JSON data */
  WorkerListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Worker.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for WorkerListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of WorkerListResponse */
  String toString() => JSON.stringify(this.toJson());

}


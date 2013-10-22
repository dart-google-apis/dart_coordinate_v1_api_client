part of coordinate_v1_api;

/** Custom field. */
class CustomField {

  /** Custom field id. */
  core.int customFieldId;

  /** Identifies this object as a custom field. */
  core.String kind;

  /** Custom field value. */
  core.String value;

  /** Create new CustomField from JSON data */
  CustomField.fromJson(core.Map json) {
    if (json.containsKey("customFieldId")) {
      customFieldId = (json["customFieldId"] is core.String) ? core.int.parse(json["customFieldId"]) : json["customFieldId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for CustomField */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Custom field definition. */
class CustomFieldDef {

  /** Whether the field is enabled. */
  core.bool enabled;

  /** Custom field id. */
  core.int id;

  /** Identifies this object as a custom field definition. */
  core.String kind;

  /** Custom field name. */
  core.String name;

  /** Whether the field is required for checkout. */
  core.bool requiredForCheckout;

  /** Custom field type. */
  core.String type;

  /** Create new CustomFieldDef from JSON data */
  CustomFieldDef.fromJson(core.Map json) {
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Collection of custom field definitions for a team. */
class CustomFieldDefListResponse {

  /** Collection of custom field definitions in a team. */
  core.List<CustomFieldDef> items;

  /** Identifies this object as a collection of custom field definitions in a team. */
  core.String kind;

  /** Create new CustomFieldDefListResponse from JSON data */
  CustomFieldDefListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new CustomFieldDef.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomFieldDefListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomFieldDefListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Collection of custom fields. */
class CustomFields {

  /** Collection of custom fields. */
  core.List<CustomField> customField;

  /** Identifies this object as a collection of custom fields. */
  core.String kind;

  /** Create new CustomFields from JSON data */
  CustomFields.fromJson(core.Map json) {
    if (json.containsKey("customField")) {
      customField = json["customField"].map((customFieldItem) => new CustomField.fromJson(customFieldItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomFields */
  core.Map toJson() {
    var output = new core.Map();

    if (customField != null) {
      output["customField"] = customField.map((customFieldItem) => customFieldItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomFields */
  core.String toString() => JSON.encode(this.toJson());

}

/** A job. */
class Job {

  /** Job id. */
  core.String id;

  /** List of job changes since it was created. The first change corresponds to the state of the job when it was created. */
  core.List<JobChange> jobChange;

  /** Identifies this object as a job. */
  core.String kind;

  /** Current job state. */
  JobState state;

  /** Create new Job from JSON data */
  Job.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobChange")) {
      jobChange = json["jobChange"].map((jobChangeItem) => new JobChange.fromJson(jobChangeItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("state")) {
      state = new JobState.fromJson(json["state"]);
    }
  }

  /** Create JSON Object for Job */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (jobChange != null) {
      output["jobChange"] = jobChange.map((jobChangeItem) => jobChangeItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Change to a job. For example assigning the job to a different worker. */
class JobChange {

  /** Identifies this object as a job change. */
  core.String kind;

  /** Change applied to the job. Only the fields that were changed are set. */
  JobState state;

  /** Time at which this change was applied. */
  core.String timestamp;

  /** Create new JobChange from JSON data */
  JobChange.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Response from a List Jobs request. */
class JobListResponse {

  /** Jobs in the collection. */
  core.List<Job> items;

  /** Identifies this object as a list of jobs. */
  core.String kind;

  /** A token to provide to get the next page of results. */
  core.String nextPageToken;

  /** Create new JobListResponse from JSON data */
  JobListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Job.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for JobListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Current state of a job. */
class JobState {

  /** Email address of the assignee. */
  core.String assignee;

  /** Custom fields. */
  CustomFields customFields;

  /** Customer name. */
  core.String customerName;

  /** Customer phone number. */
  core.String customerPhoneNumber;

  /** Identifies this object as a job state. */
  core.String kind;

  /** Job location. */
  Location location;

  /** Note added to the job. */
  core.List<core.String> note;

  /** Job progress. */
  core.String progress;

  /** Job title. */
  core.String title;

  /** Create new JobState from JSON data */
  JobState.fromJson(core.Map json) {
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
      note = json["note"].toList();
    }
    if (json.containsKey("progress")) {
      progress = json["progress"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for JobState */
  core.Map toJson() {
    var output = new core.Map();

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
      output["note"] = note.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Location of a job. */
class Location {

  /** Address. */
  core.List<core.String> addressLine;

  /** Identifies this object as a location. */
  core.String kind;

  /** Latitude. */
  core.num lat;

  /** Longitude. */
  core.num lng;

  /** Create new Location from JSON data */
  Location.fromJson(core.Map json) {
    if (json.containsKey("addressLine")) {
      addressLine = json["addressLine"].toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (addressLine != null) {
      output["addressLine"] = addressLine.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Response from a List Locations request. */
class LocationListResponse {

  /** Locations in the collection. */
  core.List<LocationRecord> items;

  /** Identifies this object as a list of locations. */
  core.String kind;

  /** A token to provide to get the next page of results. */
  core.String nextPageToken;

  /** Pagination information for token pagination. */
  TokenPagination tokenPagination;

  /** Create new LocationListResponse from JSON data */
  LocationListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new LocationRecord.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(json["tokenPagination"]);
    }
  }

  /** Create JSON Object for LocationListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (tokenPagination != null) {
      output["tokenPagination"] = tokenPagination.toJson();
    }

    return output;
  }

  /** Return String representation of LocationListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Recorded location of a worker. */
class LocationRecord {

  /** The collection time in milliseconds since the epoch. */
  core.int collectionTime;

  /** The location accuracy in meters. This is the radius of a 95% confidence interval around the location measurement. */
  core.num confidenceRadius;

  /** Identifies this object as a location. */
  core.String kind;

  /** Latitude. */
  core.num latitude;

  /** Longitude. */
  core.num longitude;

  /** Create new LocationRecord from JSON data */
  LocationRecord.fromJson(core.Map json) {
    if (json.containsKey("collectionTime")) {
      collectionTime = (json["collectionTime"] is core.String) ? core.int.parse(json["collectionTime"]) : json["collectionTime"];
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Job schedule. */
class Schedule {

  /** Whether the job is scheduled for the whole day. Time of day in start/end times is ignored if this is true. */
  core.bool allDay;

  /** Job duration in milliseconds. */
  core.String duration;

  /** Scheduled end time in milliseconds since epoch. */
  core.String endTime;

  /** Identifies this object as a job schedule. */
  core.String kind;

  /** Scheduled start time in milliseconds since epoch. */
  core.String startTime;

  /** Create new Schedule from JSON data */
  Schedule.fromJson(core.Map json) {
    if (json.containsKey("allDay")) {
      allDay = json["allDay"];
    }
    if (json.containsKey("duration")) {
      duration = json["duration"];
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
  core.Map toJson() {
    var output = new core.Map();

    if (allDay != null) {
      output["allDay"] = allDay;
    }
    if (duration != null) {
      output["duration"] = duration;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Pagination information. */
class TokenPagination {

  /** Identifies this object as pagination information. */
  core.String kind;

  /** A token to provide to get the next page of results. */
  core.String nextPageToken;

  /** A token to provide to get the previous page of results. */
  core.String previousPageToken;

  /** Create new TokenPagination from JSON data */
  TokenPagination.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** A worker in a Coordinate team. */
class Worker {

  /** Worker email address. */
  core.String id;

  /** Identifies this object as a worker. */
  core.String kind;

  /** Create new Worker from JSON data */
  Worker.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Worker */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Worker */
  core.String toString() => JSON.encode(this.toJson());

}

/** Response from a List Workers request. */
class WorkerListResponse {

  /** Workers in the collection. */
  core.List<Worker> items;

  /** Identifies this object as a list of workers. */
  core.String kind;

  /** Create new WorkerListResponse from JSON data */
  WorkerListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Worker.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for WorkerListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of WorkerListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}

class model {
  String sectionID;
  String section;
  String category;
  String capacity;
  String classesID;
  String teacherID;
  String note;
  String createDate;
  String modifyDate;
  String createUserID;
  String createUsername;
  String createUsertype;
  String studentgroupID;

  model(
      {this.sectionID,
        this.section,
        this.category,
        this.capacity,
        this.classesID,
        this.teacherID,
        this.note,
        this.createDate,
        this.modifyDate,
        this.createUserID,
        this.createUsername,
        this.createUsertype,
        this.studentgroupID});

  model.fromJson(Map<String, dynamic> json) {
    sectionID = json['sectionID'];
    section = json['section'];
    category = json['category'];
    capacity = json['capacity'];
    classesID = json['classesID'];
    teacherID = json['teacherID'];
    note = json['note'];
    createDate = json['create_date'];
    modifyDate = json['modify_date'];
    createUserID = json['create_userID'];
    createUsername = json['create_username'];
    createUsertype = json['create_usertype'];
    studentgroupID = json['studentgroupID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sectionID'] = this.sectionID;
    data['section'] = this.section;
    data['category'] = this.category;
    data['capacity'] = this.capacity;
    data['classesID'] = this.classesID;
    data['teacherID'] = this.teacherID;
    data['note'] = this.note;
    data['create_date'] = this.createDate;
    data['modify_date'] = this.modifyDate;
    data['create_userID'] = this.createUserID;
    data['create_username'] = this.createUsername;
    data['create_usertype'] = this.createUsertype;
    data['studentgroupID'] = this.studentgroupID;
    return data;
  }
}

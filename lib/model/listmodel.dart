class listmodel {
  String noticeID;
  String title;
  String notice;
  String schoolyearID;
  String date;
  String createDate;
  String createUserID;
  String createUsertypeID;
  String classesID;
  Null sectionID;
  String teacherID;
  Null branchID;

  listmodel(
      {this.noticeID,
        this.title,
        this.notice,
        this.schoolyearID,
        this.date,
        this.createDate,
        this.createUserID,
        this.createUsertypeID,
        this.classesID,
        this.sectionID,
        this.teacherID,
        this.branchID});

  listmodel.fromJson(Map<String, dynamic> json) {
    noticeID = json['noticeID'];
    title = json['title'];
    notice = json['notice'];
    schoolyearID = json['schoolyearID'];
    date = json['date'];
    createDate = json['create_date'];
    createUserID = json['create_userID'];
    createUsertypeID = json['create_usertypeID'];
    classesID = json['classesID'];
    sectionID = json['sectionID'];
    teacherID = json['teacherID'];
    branchID = json['branchID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noticeID'] = this.noticeID;
    data['title'] = this.title;
    data['notice'] = this.notice;
    data['schoolyearID'] = this.schoolyearID;
    data['date'] = this.date;
    data['create_date'] = this.createDate;
    data['create_userID'] = this.createUserID;
    data['create_usertypeID'] = this.createUsertypeID;
    data['classesID'] = this.classesID;
    data['sectionID'] = this.sectionID;
    data['teacherID'] = this.teacherID;
    data['branchID'] = this.branchID;
    return data;
  }
}

class RegistrationModel{
  bool status;
  RegistrationModel({required this.status});
  factory RegistrationModel.FromJson(Map<String , dynamic> json){
    return RegistrationModel(status: json['status']);
  }
}
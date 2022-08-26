
class UserParams{
  final String name;
  final String lastname;
  final String email ;
  final String password;

  UserParams({
    required this.name,
    required this.lastname,
    required this.email,
    required this.password
  });

  factory UserParams.toJson(Map<String ,dynamic> maps){
    return UserParams(
        name: maps['name'],
        lastname: maps['lastname'],
        email:maps['email'],
        password: maps['password']
    );
  }

  Map<String , dynamic> toMap(){

    Map<String ,dynamic> _map =<String , dynamic>{};
    _map['name']=  this.name;
    _map['lastname'] =  this.lastname;
    _map['email'] =  this.email;
    _map['password'] = this.password;

    return _map;
  }
}
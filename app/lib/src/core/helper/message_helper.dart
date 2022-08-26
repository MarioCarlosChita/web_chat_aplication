import '../../feacture/models/user.dart';

List<User> cleanListUsersSelectedHelper(
    {required int index, required List<User> lista}) {
  // clean the array in MessageActive
  for (int i = 0; i < lista.length; ++i) {
    lista[i].isMessageActive = false;
  }
  lista[index].isMessageActive = true;
  return lista;
}

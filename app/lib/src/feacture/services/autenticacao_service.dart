
import 'package:web_application/src/feacture/services/models/params/autenticacao_params.dart';

import '../repository/autenticacao/autenticacao_repository.dart';

class AutenticacaoService{

   final AutenticacaoRepository autenticacaoRepository;
   AutenticacaoService({required this.autenticacaoRepository});

   // Future<void> login({required  AutenticacaoParam autenticacaoParam}){}
}
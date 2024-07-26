/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Tarefa implements _i1.SerializableModel {
  Tarefa._({
    this.id,
    required this.texto,
    required this.concluida,
  });

  factory Tarefa({
    int? id,
    required String texto,
    required bool concluida,
  }) = _TarefaImpl;

  factory Tarefa.fromJson(Map<String, dynamic> jsonSerialization) {
    return Tarefa(
      id: jsonSerialization['id'] as int?,
      texto: jsonSerialization['texto'] as String,
      concluida: jsonSerialization['concluida'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String texto;

  bool concluida;

  Tarefa copyWith({
    int? id,
    String? texto,
    bool? concluida,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'texto': texto,
      'concluida': concluida,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TarefaImpl extends Tarefa {
  _TarefaImpl({
    int? id,
    required String texto,
    required bool concluida,
  }) : super._(
          id: id,
          texto: texto,
          concluida: concluida,
        );

  @override
  Tarefa copyWith({
    Object? id = _Undefined,
    String? texto,
    bool? concluida,
  }) {
    return Tarefa(
      id: id is int? ? id : this.id,
      texto: texto ?? this.texto,
      concluida: concluida ?? this.concluida,
    );
  }
}

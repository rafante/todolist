/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Tarefa extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Tarefa._({
    int? id,
    required this.texto,
    required this.concluida,
  }) : super(id);

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

  static final t = TarefaTable();

  static const db = TarefaRepository._();

  String texto;

  bool concluida;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'texto': texto,
      'concluida': concluida,
    };
  }

  static TarefaInclude include() {
    return TarefaInclude._();
  }

  static TarefaIncludeList includeList({
    _i1.WhereExpressionBuilder<TarefaTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TarefaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarefaTable>? orderByList,
    TarefaInclude? include,
  }) {
    return TarefaIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Tarefa.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Tarefa.t),
      include: include,
    );
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

class TarefaTable extends _i1.Table {
  TarefaTable({super.tableRelation}) : super(tableName: 'tarefa') {
    texto = _i1.ColumnString(
      'texto',
      this,
    );
    concluida = _i1.ColumnBool(
      'concluida',
      this,
    );
  }

  late final _i1.ColumnString texto;

  late final _i1.ColumnBool concluida;

  @override
  List<_i1.Column> get columns => [
        id,
        texto,
        concluida,
      ];
}

class TarefaInclude extends _i1.IncludeObject {
  TarefaInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Tarefa.t;
}

class TarefaIncludeList extends _i1.IncludeList {
  TarefaIncludeList._({
    _i1.WhereExpressionBuilder<TarefaTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Tarefa.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Tarefa.t;
}

class TarefaRepository {
  const TarefaRepository._();

  Future<List<Tarefa>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TarefaTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TarefaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarefaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Tarefa>(
      where: where?.call(Tarefa.t),
      orderBy: orderBy?.call(Tarefa.t),
      orderByList: orderByList?.call(Tarefa.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Tarefa?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TarefaTable>? where,
    int? offset,
    _i1.OrderByBuilder<TarefaTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarefaTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Tarefa>(
      where: where?.call(Tarefa.t),
      orderBy: orderBy?.call(Tarefa.t),
      orderByList: orderByList?.call(Tarefa.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Tarefa?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Tarefa>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Tarefa>> insert(
    _i1.Session session,
    List<Tarefa> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Tarefa>(
      rows,
      transaction: transaction,
    );
  }

  Future<Tarefa> insertRow(
    _i1.Session session,
    Tarefa row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Tarefa>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Tarefa>> update(
    _i1.Session session,
    List<Tarefa> rows, {
    _i1.ColumnSelections<TarefaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Tarefa>(
      rows,
      columns: columns?.call(Tarefa.t),
      transaction: transaction,
    );
  }

  Future<Tarefa> updateRow(
    _i1.Session session,
    Tarefa row, {
    _i1.ColumnSelections<TarefaTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Tarefa>(
      row,
      columns: columns?.call(Tarefa.t),
      transaction: transaction,
    );
  }

  Future<List<Tarefa>> delete(
    _i1.Session session,
    List<Tarefa> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Tarefa>(
      rows,
      transaction: transaction,
    );
  }

  Future<Tarefa> deleteRow(
    _i1.Session session,
    Tarefa row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Tarefa>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Tarefa>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TarefaTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Tarefa>(
      where: where(Tarefa.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TarefaTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Tarefa>(
      where: where?.call(Tarefa.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

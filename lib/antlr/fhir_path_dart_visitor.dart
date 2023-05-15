// Generated from FhirPath.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes, argument_type_not_assignable, unnecessary_getters_setters, always_specify_types, sort_unnamed_constructors_first

// Dart imports:
import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:math';

// Package imports:
import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

// Project imports:
import 'antlr4/antlr4.dart';
import 'quantity/fhir_path_quantity.dart';
import 'utils/utils.dart';
import 'walk_fhir_path.dart';

part 'interpreters/type_interpreters.dart';
part 'interpreters/literal_interpreters.dart';
part 'quantity/quantity_interpreters.dart';
part 'interpreters/function_interpreters.dart';
part 'interpreters/math_interpreters.dart';
part 'interpreters/utility_interpreters.dart';
part 'interpreters/equality_interpreters.dart';
part 'interpreters/identifier_interpreters.dart';

/// This is the overriden class for [FhirPathVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class FhirPathDartVisitor extends ParseTreeVisitor<List>
    implements FhirPathVisitor<List> {
  /// Private Constructor
  FhirPathDartVisitor._(this._context, this.environment, this.identifierOnly);

  /// Primary Constructor
  factory FhirPathDartVisitor(
          Map<String, dynamic>? context, Map<String, dynamic> environment) =>
      FhirPathDartVisitor._(context == null || context.isEmpty ? [] : [context],
          environment, false);

  /// Easy copyWith function
  FhirPathDartVisitor copyWith(
          {List<dynamic>? context,
          Map<String, dynamic>? environment,
          bool? printType,
          identifierOnly}) =>
      FhirPathDartVisitor._(
        context ?? this.context,
        environment ?? this.environment,
        identifierOnly ?? this.identifierOnly,
      );

  /// CONTEXT
  List<dynamic> _context;

  /// CONTEXT getter
  List<dynamic> get context => _context;

  /// CONTEXT setter (partly for debugging)
  set context(List<dynamic> newContext) {
    // developer.log('NEWCONTEXT: $newContext');
    _context = newContext;
  }

  /// Convenience variable because sometimes you don't want the identifier to
  /// be applied to the context, you just want the identifier
  bool identifierOnly;

  /// Environment and any variables that are passed in initially
  final Map<String, dynamic> environment;

  /// Convenience method to create a new context
  ExpressionContext newContext(String string) => (FhirPathParser(
        CommonTokenStream(
          FhirPathLexer(
            InputStream.fromString(string),
          ),
        ),
      )..buildParseTree = true)
          .expression();

  /// This is purely for testing purposes
  static const bool printType = false;

  /// Prints off the immediate context being used
  void printContextType(ParseTree ctx) {
    if (printType) {
      // print('${ctx.runtimeType} : ${ctx.text}');
      // developer.log('TYPECONTEXT: ${_context}');
    }
  }

  /// Allows easy logging of the children of the current context
  void printChildren(ParseTree ctx) {
    developer.log('PRINT CHILDREN');
    for (var i = 0; i < ctx.childCount; i++) {
      developer
          .log('${ctx.getChild(i).runtimeType} : ${ctx.getChild(i)!.text}');
    }
    developer.log('COMPLETED PRINTING CHILDREN');
  }

  /// This is the beginning of how you evaluate an expression
<<<<<<< HEAD
  List execute(ExpressionContext ctx) => visit(ctx) ?? [];
=======
  List<dynamic> execute(ExpressionContext ctx) => visit(ctx) ?? <dynamic>[];
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  @override
  List<dynamic>? visitIndexerExpression(IndexerExpressionContext ctx) =>
      _$visitIndexerExpression(ctx, this);

  @override
  List<dynamic>? visitPolarityExpression(PolarityExpressionContext ctx) {
    printContextType(ctx);
    return _$visitPolarityExpression(ctx, this);
  }

  @override
  List<dynamic>? visitAdditiveExpression(AdditiveExpressionContext ctx) {
    printContextType(ctx);
    return _$visitAdditiveExpression(ctx, this);
  }

  @override
  List<dynamic>? visitMultiplicativeExpression(
      MultiplicativeExpressionContext ctx) {
    printContextType(ctx);
    return _$visitMultiplicativeExpression(ctx, this);
  }

  @override
  List<dynamic>? visitUnionExpression(UnionExpressionContext ctx) {
    printContextType(ctx);
    return _$visitUnionExpression(ctx, this);
  }

  @override
  List<dynamic>? visitOrExpression(OrExpressionContext ctx) {
    printContextType(ctx);
    return _$visitOrExpression(ctx, this);
  }

  @override
  List<dynamic>? visitAndExpression(AndExpressionContext ctx) {
    printContextType(ctx);
    return _$visitAndExpression(ctx, this);
  }

  @override
  List<dynamic>? visitEndOfFile(EndOfFileContext ctx) => visitChildren(ctx);

  @override
  List<dynamic>? visitMembershipExpression(MembershipExpressionContext ctx) {
    printContextType(ctx);
    return _$visitMembershipExpression(ctx, this);
  }

  @override
  List<dynamic>? visitInequalityExpression(InequalityExpressionContext ctx) {
    printContextType(ctx);
    return _$visitInequalityExpression(ctx, this);
  }

  @override
  List<dynamic>? visitInvocationExpression(InvocationExpressionContext ctx) {
    printContextType(ctx);

    return _$visitInvocationExpression(ctx, this);
  }

  @override
  List<dynamic>? visitEqualityExpression(EqualityExpressionContext ctx) {
    printContextType(ctx);
    return _$visitEqualityExpression(ctx, this);
  }

  @override
  List<dynamic>? visitImpliesExpression(ImpliesExpressionContext ctx) {
    printContextType(ctx);
    return _$visitImpliesExpression(ctx, this);
  }

  @override
  List<dynamic>? visitTermExpression(TermExpressionContext ctx) {
    printContextType(ctx);

    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitTypeExpression(TypeExpressionContext ctx) {
    printContextType(ctx);
    return _$visitTypeExpression(ctx, this);
  }

  @override
  List<dynamic>? visitInvocationTerm(InvocationTermContext ctx) {
    printContextType(ctx);

    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitLiteralTerm(LiteralTermContext ctx) {
    printContextType(ctx);
    return _$visitLiteralTerm(ctx, this);
  }

  @override
  List<dynamic>? visitExternalConstantTerm(ExternalConstantTermContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    printContextType(ctx);
    return _$visitParenthesizedTerm(ctx, this);
  }

  @override
  List<dynamic>? visitNullLiteral(NullLiteralContext ctx) {
    printContextType(ctx);

    return _$visitNullLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitBooleanLiteral(BooleanLiteralContext ctx) {
    printContextType(ctx);

    return _$visitBooleanLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitStringLiteral(StringLiteralContext ctx) {
    printContextType(ctx);

    return _$visitStringLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitNumberLiteral(NumberLiteralContext ctx) {
    printContextType(ctx);

    return _$visitNumberLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitDateLiteral(DateLiteralContext ctx) {
    printContextType(ctx);

    return _$visitDateLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    printContextType(ctx);

    return _$visitDateTimeLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitTimeLiteral(TimeLiteralContext ctx) {
    printContextType(ctx);

    return _$visitTimeLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitQuantityLiteral(QuantityLiteralContext ctx) {
    printContextType(ctx);

    return _$visitQuantityLiteral(ctx, this);
  }

  @override
  List<dynamic>? visitExternalConstant(ExternalConstantContext ctx) {
    printContextType(ctx);
    return _$visitExternalConstant(ctx, this);
  }

  @override
  List<dynamic>? visitMemberInvocation(MemberInvocationContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitFunctionInvocation(FunctionInvocationContext ctx) {
    printContextType(ctx);

    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitThisInvocation(ThisInvocationContext ctx) {
    printContextType(ctx);
    return _$visitThisInvocation(ctx, this);
  }

  @override
  List<dynamic>? visitIndexInvocation(IndexInvocationContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitTotalInvocation(TotalInvocationContext ctx) {
    printContextType(ctx);

    return _$visitTotalInvocation(ctx, this);
  }

  @override
  List<dynamic>? visitFunction(FunctionContext ctx) {
    printContextType(ctx);

    return _$visitFunction(ctx, this);
  }

  @override
  List<dynamic>? visitParamList(ParamListContext ctx) {
    printContextType(ctx);
    return _$visitParamList(ctx, this);
  }

  @override
  List<dynamic>? visitQuantity(QuantityContext ctx) {
    printContextType(ctx);

    return _$visitQuantity(ctx, this);
  }

  @override
  List<dynamic>? visitUnit(UnitContext ctx) {
    printContextType(ctx);
    return _$visitUnit(ctx, this);
  }

  @override
  List<dynamic>? visitDateTimePrecision(DateTimePrecisionContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitPluralDateTimePrecision(
      PluralDateTimePrecisionContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitTypeSpecifier(TypeSpecifierContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
    printContextType(ctx);
    return visitChildren(ctx);
  }

  @override
  List<dynamic>? visitIdentifier(IdentifierContext ctx) {
    printContextType(ctx);
    return _$visitIdentifier(ctx, this);
  }
}

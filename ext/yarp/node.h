#ifndef YARP_NODE_H
#define YARP_NODE_H

#include "location.h"
#include "token.h"
#include <stddef.h>

typedef enum {
  YP_NODE_ASSIGNMENT,
  YP_NODE_BINARY,
  YP_NODE_CHARACTER_LITERAL,
  YP_NODE_FLOAT_LITERAL,
  YP_NODE_IDENTIFIER,
  YP_NODE_IF_MODIFIER,
  YP_NODE_IMAGINARY_LITERAL,
  YP_NODE_INTEGER_LITERAL,
  YP_NODE_OPERATOR_ASSIGNMENT,
  YP_NODE_PROGRAM,
  YP_NODE_RATIONAL_LITERAL,
  YP_NODE_REDO,
  YP_NODE_RETRY,
  YP_NODE_STATEMENTS,
  YP_NODE_TERNARY,
  YP_NODE_UNLESS_MODIFIER,
  YP_NODE_UNTIL_MODIFIER,
  YP_NODE_VARIABLE_REFERENCE,
  YP_NODE_WHILE_MODIFIER,
} yp_node_type_t;

struct yp_node;
struct yp_node;
typedef struct yp_node_list {
  struct yp_node **nodes;
  size_t size;
  size_t capacity;
} yp_node_list_t;

// This is the overall tagged union representing a node in the syntax tree.
typedef struct yp_node {
  // This represents the type of the node. It somewhat maps to the nodes that
  // existed in the original grammar and ripper, but it's not a 1:1 mapping.
  yp_node_type_t type;

  // This is the location of the node in the source. It's a range of bytes
  // containing a start and an end.
  yp_location_t location;

  // Every entry in this union is a different kind of node in the tree. For
  // the most part they only contain one or two child nodes, except for the
  // more complicated nodes like params. There may be an opportunity for
  // optimization here by combining node types that share the same shape, but
  // it might not end up mattering in the final compiled code.
  union {
    // Assignment
    struct {
      struct yp_node *target;
      yp_token_t operator;
      struct yp_node *value;
    } assignment;

    // Binary
    struct {
      struct yp_node *left;
      yp_token_t operator;
      struct yp_node *right;
    } binary;

    // CharacterLiteral
    struct {
      yp_token_t value;
    } character_literal;

    // FloatLiteral
    struct {
      yp_token_t value;
    } float_literal;

    // Identifier
    struct {
      yp_token_t value;
    } identifier;

    // IfModifier
    struct {
      struct yp_node *statement;
      yp_token_t keyword;
      struct yp_node *predicate;
    } if_modifier;

    // ImaginaryLiteral
    struct {
      yp_token_t value;
    } imaginary_literal;

    // IntegerLiteral
    struct {
      yp_token_t value;
    } integer_literal;

    // OperatorAssignment
    struct {
      struct yp_node *target;
      yp_token_t operator;
      struct yp_node *value;
    } operator_assignment;

    // Program
    struct {
      struct yp_node *statements;
    } program;

    // RationalLiteral
    struct {
      yp_token_t value;
    } rational_literal;

    // Redo
    struct {
      yp_token_t value;
    } redo;

    // Retry
    struct {
      yp_token_t value;
    } retry;

    // Statements
    struct {
      struct yp_node_list *body;
    } statements;

    // Ternary
    struct {
      struct yp_node *predicate;
      yp_token_t question_mark;
      struct yp_node *true_expression;
      yp_token_t colon;
      struct yp_node *false_expression;
    } ternary;

    // UnlessModifier
    struct {
      struct yp_node *statement;
      yp_token_t keyword;
      struct yp_node *predicate;
    } unless_modifier;

    // UntilModifier
    struct {
      struct yp_node *statement;
      yp_token_t keyword;
      struct yp_node *predicate;
    } until_modifier;

    // VariableReference
    struct {
      yp_token_t value;
    } variable_reference;

    // WhileModifier
    struct {
      struct yp_node *statement;
      yp_token_t keyword;
      struct yp_node *predicate;
    } while_modifier;
  } as;
} yp_node_t;

#endif // YARP_NODE_H
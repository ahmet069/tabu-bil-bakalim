// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on CounterBase, Store {
  late final _$isStopAtom = Atom(name: 'CounterBase.isStop', context: context);

  @override
  bool get isStop {
    _$isStopAtom.reportRead();
    return super.isStop;
  }

  @override
  set isStop(bool value) {
    _$isStopAtom.reportWrite(value, super.isStop, () {
      super.isStop = value;
    });
  }

  late final _$durationAtom =
      Atom(name: 'CounterBase.duration', context: context);

  @override
  int get duration {
    _$durationAtom.reportRead();
    return super.duration;
  }

  @override
  set duration(int value) {
    _$durationAtom.reportWrite(value, super.duration, () {
      super.duration = value;
    });
  }

  late final _$score1Atom = Atom(name: 'CounterBase.score1', context: context);

  @override
  int get score1 {
    _$score1Atom.reportRead();
    return super.score1;
  }

  @override
  set score1(int value) {
    _$score1Atom.reportWrite(value, super.score1, () {
      super.score1 = value;
    });
  }

  late final _$score2Atom = Atom(name: 'CounterBase.score2', context: context);

  @override
  int get score2 {
    _$score2Atom.reportRead();
    return super.score2;
  }

  @override
  set score2(int value) {
    _$score2Atom.reportWrite(value, super.score2, () {
      super.score2 = value;
    });
  }

  late final _$counterAtom =
      Atom(name: 'CounterBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$true_Atom = Atom(name: 'CounterBase.true_', context: context);

  @override
  int get true_ {
    _$true_Atom.reportRead();
    return super.true_;
  }

  @override
  set true_(int value) {
    _$true_Atom.reportWrite(value, super.true_, () {
      super.true_ = value;
    });
  }

  late final _$tabu_Atom = Atom(name: 'CounterBase.tabu_', context: context);

  @override
  int get tabu_ {
    _$tabu_Atom.reportRead();
    return super.tabu_;
  }

  @override
  set tabu_(int value) {
    _$tabu_Atom.reportWrite(value, super.tabu_, () {
      super.tabu_ = value;
    });
  }

  late final _$pas_Atom = Atom(name: 'CounterBase.pas_', context: context);

  @override
  int get pas_ {
    _$pas_Atom.reportRead();
    return super.pas_;
  }

  @override
  set pas_(int value) {
    _$pas_Atom.reportWrite(value, super.pas_, () {
      super.pas_ = value;
    });
  }

  late final _$CounterBaseActionController =
      ActionController(name: 'CounterBase', context: context);

  @override
  void setScore1(int order) {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.setScore1');
    try {
      return super.setScore1(order);
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void Stop_Start(String direction) {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.Stop_Start');
    try {
      return super.Stop_Start(direction);
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setScore2() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.setScore2');
    try {
      return super.setScore2();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment_true({String? text}) {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.increment_true');
    try {
      return super.increment_true(text: text);
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement_true() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.decrement_true');
    try {
      return super.decrement_true();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset_state() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.reset_state');
    try {
      return super.reset_state();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void set_duration(int new_duration) {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.set_duration');
    try {
      return super.set_duration(new_duration);
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement_pas() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.decrement_pas');
    try {
      return super.decrement_pas();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment_tabu() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.increment_tabu');
    try {
      return super.increment_tabu();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isStop: ${isStop},
duration: ${duration},
score1: ${score1},
score2: ${score2},
counter: ${counter},
true_: ${true_},
tabu_: ${tabu_},
pas_: ${pas_}
    ''';
  }
}

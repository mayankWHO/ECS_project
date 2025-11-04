import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'prediction_widget.dart' show PredictionWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PredictionModel extends FlutterFlowModel<PredictionWidget> {
  ///  Local state fields for this page.

  String session = 'morning';

  int? timetakenMorning;

  int? timetakenAfternoon;

  int? timetakenEvening;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in prediction widget.
  MedicationsRecord? morningQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in prediction widget.
  MedicationsRecord? afternoonQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in prediction widget.
  MedicationsRecord? eveningQuery;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (predict)] action in Button widget.
  ApiCallResponse? apiResultqp8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

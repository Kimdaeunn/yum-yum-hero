import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_button_model.dart';
export 'cart_button_model.dart';

class CartButtonWidget extends StatefulWidget {
  const CartButtonWidget({super.key});

  @override
  State<CartButtonWidget> createState() => _CartButtonWidgetState();
}

class _CartButtonWidgetState extends State<CartButtonWidget> {
  late CartButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: '장바구니 담기',
        options: FFButtonOptions(
          width: double.infinity,
          height: 47.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).primary,
          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 18.0,
                letterSpacing: 0.0,
              ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

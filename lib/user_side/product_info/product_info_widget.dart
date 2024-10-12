import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_info_model.dart';
export 'product_info_model.dart';

class ProductInfoWidget extends StatefulWidget {
  const ProductInfoWidget({
    super.key,
    required this.foodItem,
  });

  final FoodItemRecord? foodItem;

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  late ProductInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget!.foodItem?.name,
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.foodItem?.desc,
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: valueOrDefault<String>(
                        widget!.foodItem?.price?.toString(),
                        '-',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.lineThrough,
                          ),
                    ),
                    TextSpan(
                      text: '원',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget!.foodItem?.salePer?.toString(),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget!.foodItem?.salePrice?.toString(),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  TextSpan(
                    text: '원',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://i.pinimg.com/564x/ba/71/cc/ba71ccba17bd75f61bd437a33742161d.jpg',
                width: 90.0,
                height: 90.0,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 75.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => Icon(
                      Icons.remove_rounded,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).alternate,
                      size: 12.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_rounded,
                      color: enabled
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).alternate,
                      size: 12.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    count: _model.countControllerValue ??= 0,
                    updateCount: (count) =>
                        safeSetState(() => _model.countControllerValue = count),
                    stepSize: 1,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'splach_only_logo_model.dart';
export 'splach_only_logo_model.dart';

class SplachOnlyLogoWidget extends StatefulWidget {
  const SplachOnlyLogoWidget({super.key});

  @override
  State<SplachOnlyLogoWidget> createState() => _SplachOnlyLogoWidgetState();
}

class _SplachOnlyLogoWidgetState extends State<SplachOnlyLogoWidget> {
  late SplachOnlyLogoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplachOnlyLogoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(
        'home',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 200),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/ss.png',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.none,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

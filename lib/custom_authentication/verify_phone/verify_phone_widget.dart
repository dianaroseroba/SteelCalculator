import '../../authentication_firebase/firebase_auth/auth_util.dart';
import '../../flutter_utils/flutter_animations.dart';
import '../../flutter_utils/flutter_icon_button.dart';
import '../../flutter_utils/flutter_theme.dart';
import '../../flutter_utils/flutter_util.dart';
import '../../flutter_utils/flutter_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'verify_phone_model.dart';
export 'verify_phone_model.dart';

class VerifyPhoneWidget extends StatefulWidget {
  const VerifyPhoneWidget({
    super.key,
    this.phoneNumber,
  });

  final String? phoneNumber;

  @override
  State<VerifyPhoneWidget> createState() => _Auth3VerifyPhoneWidgetState();
}

class _Auth3VerifyPhoneWidgetState extends State<VerifyPhoneWidget>
    with TickerProviderStateMixin {
  late VerifyPhoneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyPhoneModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0, 0.524),
            end: const Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(70.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
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
        backgroundColor: FlutterTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterTheme.of(context).primaryBackground,
                            FlutterTheme.of(context).accent1
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(1.0, 0.0),
                          end: const AlignmentDirectional(-1.0, 0),
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex: 5,
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 570.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 140.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.handyman_sharp,
                                          color: Color(0xFF332E2E),
                                          size: 44.0,
                                        ),
                                      ),
                                      Text(
                                        'BM STEELS',
                                        style: FlutterTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: FlutterIconButton(
                                          borderColor:
                                              FlutterTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: 12.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterTheme.of(context)
                                                  .secondaryBackground,
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color: FlutterTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Verification Code',
                                        style: FlutterTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 24.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.safePop();
                                          },
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                const TextSpan(
                                                  text:
                                                      'Enter the 6 digit code that you received at: ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: widget.phoneNumber!,
                                                  style: TextStyle(
                                                    color: FlutterTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const TextSpan(
                                                  text: ' change number?',
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style: FlutterTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      PinCodeTextField(
                                        autoDisposeControllers: false,
                                        appContext: context,
                                        length: 6,
                                        textStyle: FlutterTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        enableActiveFill: true,
                                        autoFocus: true,
                                        enablePinAutofill: true,
                                        errorTextSpace: 16.0,
                                        showCursor: true,
                                        cursorColor:
                                            FlutterTheme.of(context)
                                                .primary,
                                        obscureText: false,
                                        hintCharacter: '-',
                                        keyboardType: TextInputType.number,
                                        pinTheme: PinTheme(
                                          fieldHeight: 48.0,
                                          fieldWidth: 48.0,
                                          borderWidth: 2.0,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                          shape: PinCodeFieldShape.box,
                                          activeColor:
                                              FlutterTheme.of(context)
                                                  .primaryText,
                                          inactiveColor:
                                              FlutterTheme.of(context)
                                                  .secondaryBackground,
                                          selectedColor:
                                              FlutterTheme.of(context)
                                                  .primary,
                                          activeFillColor:
                                              FlutterTheme.of(context)
                                                  .primaryText,
                                          inactiveFillColor:
                                              FlutterTheme.of(context)
                                                  .secondaryBackground,
                                          selectedFillColor:
                                              FlutterTheme.of(context)
                                                  .primary,
                                        ),
                                        controller: _model.pinCodeController,
                                        onChanged: (_) {},
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: _model
                                            .pinCodeControllerValidator
                                            .asValidator(context),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              final smsCodeVal = _model
                                                  .pinCodeController!.text;
                                              if (smsCodeVal.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                        'Enter SMS verification code.'),
                                                  ),
                                                );
                                                return;
                                              }
                                              final phoneVerifiedUser =
                                                  await authManager
                                                      .verifySmsCode(
                                                context: context,
                                                smsCode: smsCodeVal,
                                              );
                                              if (phoneVerifiedUser == null) {
                                                return;
                                              }

                                              // ignore: use_build_context_synchronously
                                              context.goNamedAuth(
                                                  'calculate', context.mounted);
                                            },
                                            text: 'Verify Code',
                                            options: FFButtonOptions(
                                              width: 200.0,
                                              height: 44.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
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

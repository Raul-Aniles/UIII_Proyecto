import '../crear/crear_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../iniciar/iniciar_widget.dart';
import '../main.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    ClipRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Color(0xFF262D34),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/xd.jfif',
                              ).image,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1E2429),
                            Color(0x001E2429)
                          ],
                          stops: [
                            0,
                            1
                          ],
                          begin: AlignmentDirectional(0, 1),
                          end: AlignmentDirectional(0, -1),
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                                    child: PageView(
                                      controller: pageViewController ??= PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.asset(
                                              'assets/images/Ferreteria.png',
                                              width: 230,
                                              height: 200,
                                              fit: BoxFit.fitWidth,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Bienvenido',
                                                          style: FlutterFlowTheme.of(context).title1.override(
                                                                fontFamily: 'Lexend Deca',
                                                                color: Colors.white,
                                                                fontSize: 36,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'A tu ferretería de confianza',
                                                          style: FlutterFlowTheme.of(context).title2.override(
                                                                fontFamily: 'Lexend Deca',
                                                                color: Color(0xB3FFFFFF),
                                                                fontSize: 22,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 24),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Sobre nosotros',
                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                            fontFamily: 'Lexend Deca',
                                                            color: Colors.white,
                                                            fontSize: 36,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Somos la red de distribución de materiales para construcción de mayor cobertura en México y con presencia en Latinoamérica.',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(context).title2.override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xB3FFFFFF),
                                                      fontSize: 22,
                                                      fontWeight: FontWeight.w100,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                      child: SmoothPageIndicator(
                                        controller: pageViewController ??= PageController(initialPage: 0),
                                        count: 2,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) {
                                          pageViewController.animateToPage(
                                            i,
                                            duration: Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: ExpandingDotsEffect(
                                          expansionFactor: 2,
                                          spacing: 8,
                                          radius: 16,
                                          dotWidth: 16,
                                          dotHeight: 16,
                                          dotColor: Color(0xFF9E9E9E),
                                          activeDotColor: Color(0xFFFCB117),
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              duration: Duration(milliseconds: 300),
                                              reverseDuration: Duration(milliseconds: 300),
                                              child: IniciarWidget(),
                                            ),
                                          );
                                        },
                                        text: 'Iniciar sesión',
                                        options: FFButtonOptions(
                                          width: 450,
                                          height: 60,
                                          color: Color(0xFFDBE2E7),
                                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF262D34),
                                                fontWeight: FontWeight.normal,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 40,
                                        ),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 300),
                                            reverseDuration: Duration(milliseconds: 300),
                                            child: CrearWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Crear cuenta',
                                      options: FFButtonOptions(
                                        width: 450,
                                        height: 60,
                                        color: Color(0xFFDBE2E7),
                                        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF262D34),
                                              fontWeight: FontWeight.normal,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.rightToLeft,
                                              duration: Duration(milliseconds: 300),
                                              reverseDuration: Duration(milliseconds: 300),
                                              child: NavBarPage(initialPage: 'Aplicacion'),
                                            ),
                                          );
                                        },
                                        text: 'Entrar sin cuenta',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 60,
                                          color: Colors.white,
                                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFFFCB117),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaInicioWidget extends StatefulWidget {
  const PaginaInicioWidget({Key? key}) : super(key: key);

  @override
  _PaginaInicioWidgetState createState() => _PaginaInicioWidgetState();
}

class _PaginaInicioWidgetState extends State<PaginaInicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-0.05, 0),
          child: Text(
            'GDaysi II - Transferencias en CI',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/logo_alcon_der.png',
                  width: 500,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('InicioSesion');
                },
                text: 'Iniciar Sesión',
                options: FFButtonOptions(
                  width: 150,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 85,
                  icon: Icon(
                    Icons.settings_applications,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 50,
                  ),
                  onPressed: () {
                    print('IconButtonConfigurar pressed ...');
                  },
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('ButtonRegistrarUsuario pressed ...');
                },
                text: 'Registrar Usuario',
                options: FFButtonOptions(
                  width: 175,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

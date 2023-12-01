import 'package:flutter/material.dart';
import '../medecine.dart';

class MedecinesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // listofmedecines6Xe (502:236)
        width: double.infinity,
        height: 800*fem,
        decoration: BoxDecoration (
          color: Color(0xfffff2ff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle5PWk (502:238)
              left: 0*fem,
              top: 218*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 582*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(40*fem),
                        topRight: Radius.circular(40*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle24rQL (705:92)
              left: 15*fem,
              top: 580*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle25XmN (705:93)
              left: 15*fem,
              top: 693*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle22S7e (705:90)
              left: 15*fem,
              top: 241*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0x33fdcbe4),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(11*fem),
                        topRight: Radius.circular(15*fem),
                        bottomRight: Radius.circular(15*fem),
                        bottomLeft: Radius.circular(15*fem),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle236CC (705:91)
              left: 15*fem,
              top: 354*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle4vwv (502:245)
              left: 15*fem,
              top: 467*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // listofmedecinesqoz (502:246)
              left: 35*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 192*fem,
                  height: 30*fem,
                  child: Text(
                    'List of Medecines',
                    style: TextStyle (
                      
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.245*ffem/fem,
                      color: Color(0xff34134e),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse1hrC (502:247)
              left: 37*fem,
              top: 61*fem,
              child: Align(
                child: SizedBox(
                  width: 78*fem,
                  height: 78*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(39*fem),
                      color: Color(0xafffe6ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowsarrowleft27n (502:254)
              left: 25.6936035156*fem,
              top: 26.4300842285*fem,
              child: Align(
                child: SizedBox(
                  width: 19.18*fem,
                  height: 18.14*fem,
                  child: Image.asset(
                    'assets/page-1/images/arrows-arrow-left-xDz.png',
                    width: 19.18*fem,
                    height: 18.14*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // addlistHpQ (502:265)
              left: 53*fem,
              top: 77*fem,
              child: Align(
                child: SizedBox(
                  width: 45*fem,
                  height: 45*fem,
                  child: Image.asset(
                    'assets/page-1/images/add-list.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              // photo1604937455095ef2fe3d46fcd (706:94)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 807*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffff2ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle26gbe (706:95)
              left: 0*fem,
              top: 218*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 582*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(40*fem),
                        topRight: Radius.circular(40*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group31nua (707:228)
              left: 15*fem,
              top: 693*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(8*fem, 6*fem, 14*fem, 7*fem),
                width: 329*fem,
                height: 86*fem,
                decoration: BoxDecoration (
                  color: Color(0x33fdcbe4),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(11*fem),
                    topRight: Radius.circular(15*fem),
                    bottomRight: Radius.circular(15*fem),
                    bottomLeft: Radius.circular(15*fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // vectorBwi (707:231)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                      width: 60*fem,
                      height: 60*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-Jha.png',
                        width: 60*fem,
                        height: 60*fem,
                      ),
                    ),
                    Container(
                      // autogroupdvuausi (H8y3L8F1AojsmgdDKkdvua)
                      margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 13*fem, 8*fem),
                      width: 111*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // mednameEuz (707:232)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            child: Text(
                              'Med name',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xfffb5361),
                              ),
                            ),
                          ),
                          Container(
                            // daily0830MUp (707:234)
                            width: double.infinity,
                            child: Text(
                              'Daily - 08:30',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xff35134f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // daysleft3cY (707:230)
                      margin: EdgeInsets.fromLTRB(0*fem, 32*fem, 0*fem, 0*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle (
                            
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245*ffem/fem,
                            color: Color(0xff999999),
                          ),
                          children: [
                            TextSpan(
                              text: '40 days',
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0x99999999),
                              ),
                            ),
                            TextSpan(
                              text: 'left',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group30qB2 (707:221)
              left: 15*fem,
              top: 241*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(8*fem, 6*fem, 14*fem, 7*fem),
                width: 329*fem,
                height: 86*fem,
                decoration: BoxDecoration (
                  color: Color(0x33fdcbe4),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(11*fem),
                    topRight: Radius.circular(15*fem),
                    bottomRight: Radius.circular(15*fem),
                    bottomLeft: Radius.circular(15*fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // vector3nt (707:224)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                      width: 60*fem,
                      height: 60*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-Trc.png',
                        width: 60*fem,
                        height: 60*fem,
                      ),
                    ),
                    Container(
                      // autogroupybvva28 (H8y3YnYaJZFdxSJoeTYbVv)
                      margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 13*fem, 8*fem),
                      width: 111*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // mednameJTv (707:225)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            child: Text(
                              'Med name',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xfffb5361),
                              ),
                            ),
                          ),
                          Container(
                            // daily0830Dat (707:227)
                            width: double.infinity,
                            child: Text(
                              'Daily - 08:30',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xff35134f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // daysleftinY (707:223)
                      margin: EdgeInsets.fromLTRB(0*fem, 32*fem, 0*fem, 0*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle (
                            
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245*ffem/fem,
                            color: Color(0xff999999),
                          ),
                          children: [
                            TextSpan(
                              text: '40 days',
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle (
                                
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0x99999999),
                              ),
                            ),
                            TextSpan(
                              text: 'left',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group29Srx (707:200)
              left: 15*fem,
              top: 354*fem,
              child: Container(
                width: 329*fem,
                height: 312*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupdf4gm8Y (H8y3o7U37V541StvS3dF4g)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                      padding: EdgeInsets.fromLTRB(2*fem, 4*fem, 20*fem, 4*fem),
                      width: double.infinity,
                      height: 86*fem,
                      decoration: BoxDecoration (
                        color: Color(0x33fdcbe4),
                        borderRadius: BorderRadius.only (
                          topLeft: Radius.circular(11*fem),
                          topRight: Radius.circular(15*fem),
                          bottomRight: Radius.circular(15*fem),
                          bottomLeft: Radius.circular(15*fem),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorp6p (707:203)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 4*fem),
                            width: 60*fem,
                            height: 60*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-u1N.png',
                              width: 60*fem,
                              height: 60*fem,
                            ),
                          ),
                          Container(
                            // autogroupqnuziT6 (H8y3uC8EpyytKauEpmQNuz)
                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 13*fem, 13*fem),
                            width: 111*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mednamerJQ (707:204)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Med name',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.245*ffem/fem,
                                      color: Color(0xfffb5361),
                                    ),
                                  ),
                                ),
                                Container(
                                  // daily0830mRN (707:206)
                                  width: double.infinity,
                                  child: Text(
                                    'Daily - 08:30',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.245*ffem/fem,
                                      color: Color(0xff35134f),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // daysleftsjJ (707:202)
                            margin: EdgeInsets.fromLTRB(0*fem, 27*fem, 0*fem, 0*fem),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle (
                                  
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.245*ffem/fem,
                                  color: Color(0xff999999),
                                ),
                                children: [
                                  TextSpan(
                                    text: '40 days',
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle (
                                      
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.245*ffem/fem,
                                      color: Color(0x99999999),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'left',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group28qpY (707:207)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupjmx2oWU (H8y4GGMTd5dbS34HPRjMX2)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                            padding: EdgeInsets.fromLTRB(8*fem, 6*fem, 14*fem, 7*fem),
                            width: double.infinity,
                            height: 86*fem,
                            decoration: BoxDecoration (
                              color: Color(0x33fdcbe4),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(11*fem),
                                topRight: Radius.circular(15*fem),
                                bottomRight: Radius.circular(15*fem),
                                bottomLeft: Radius.circular(15*fem),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorFdN (707:210)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                  width: 60*fem,
                                  height: 60*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-dnc.png',
                                    width: 60*fem,
                                    height: 60*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupph56Nxt (H8y4NBMGmfK4ZMAww4Ph56)
                                  margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 13*fem, 8*fem),
                                  width: 111*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // mednameG2g (707:211)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        width: double.infinity,
                                        child: Text(
                                          'Med name',
                                          textAlign: TextAlign.center,
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0xfffb5361),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // daily0830Ykt (707:213)
                                        width: double.infinity,
                                        child: Text(
                                          'Daily - 08:30',
                                          textAlign: TextAlign.center,
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0xff35134f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // daysleftf4p (707:209)
                                  margin: EdgeInsets.fromLTRB(0*fem, 32*fem, 0*fem, 0*fem),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle (
                                        
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.245*ffem/fem,
                                        color: Color(0xff999999),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '40 days',
                                        ),
                                        TextSpan(
                                          text: ' ',
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0x99999999),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'left',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group28ehS (707:214)
                            padding: EdgeInsets.fromLTRB(8*fem, 6*fem, 14*fem, 7*fem),
                            width: double.infinity,
                            height: 86*fem,
                            decoration: BoxDecoration (
                              color: Color(0x33fdcbe4),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(11*fem),
                                topRight: Radius.circular(15*fem),
                                bottomRight: Radius.circular(15*fem),
                                bottomLeft: Radius.circular(15*fem),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorHVW (707:217)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                  width: 60*fem,
                                  height: 60*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector.png',
                                    width: 60*fem,
                                    height: 60*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupcjknQa8 (H8y4gFfVMEpCJwJFG8cJKn)
                                  margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 13*fem, 8*fem),
                                  width: 111*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // medname9Gp (707:218)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        width: double.infinity,
                                        child: Text(
                                          'Med name',
                                          textAlign: TextAlign.center,
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0xfffb5361),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // daily0830Smi (707:220)
                                        width: double.infinity,
                                        child: Text(
                                          'Daily - 08:30',
                                          textAlign: TextAlign.center,
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0xff35134f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // daysleftL6Q (707:216)
                                  margin: EdgeInsets.fromLTRB(0*fem, 32*fem, 0*fem, 0*fem),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle (
                                        
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.245*ffem/fem,
                                        color: Color(0xff999999),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '40 days',
                                        ),
                                        TextSpan(
                                          text: ' ',
                                          style: TextStyle (
                                            
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.245*ffem/fem,
                                            color: Color(0x99999999),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'left',
                                        ),
                                      ],
                                    ),
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
              ),
            ),
            Positioned(
              // listofmedecinesick (706:101)
              left: 35*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 192*fem,
                  height: 30*fem,
                  child: Text(
                    'List of Medecines',
                    style: TextStyle (
                      
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.245*ffem/fem,
                      color: Color(0xff34134e),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse2164 (706:102)
              left: 37*fem,
              top: 61*fem,
              child: Align(
                child: SizedBox(
                  width: 78*fem,
                  height: 78*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(39*fem),
                      color: Color(0xafffe6ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowsarrowleftTCx (706:103)
              left: 25.6936035156*fem,
              top: 26.4300842285*fem,
              child: Align(
                child: SizedBox(
                  width: 19.18*fem,
                  height: 18.14*fem,
                  child: Image.asset(
                    'assets/page-1/images/arrows-arrow-left-Xgp.png',
                    width: 19.18*fem,
                    height: 18.14*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // addlist9rU (706:104)
              left: 53*fem,
              top: 77*fem,
              child: Align(
                child: SizedBox(
                  width: 45*fem,
                  height: 45*fem,
                  child: Image.asset(
                    'assets/page-1/images/add-list-UPv.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}
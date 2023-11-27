import 'package:flutter/material.dart';

class MedecineInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // medecineinfoxHA (753:134)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffff2ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupimecEEg (H8y7pL6mgMgTKRgTKZimEc)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // rectangle39wun (753:158)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 83.92*fem),
                    width: 144*fem,
                    height: 63.25*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-39.png',
                      width: 144*fem,
                      height: 63.25*fem,
                    ),
                  ),
                  Container(
                    // autogroup5qfef56 (H8y5UQ1GZTeP1eyzha5Qfe)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 212*fem, 8*fem),
                    padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 17*fem, 17*fem),
                    decoration: BoxDecoration (
                      color: Color(0xafffe6ff),
                      borderRadius: BorderRadius.circular(39*fem),
                    ),
                    child: Center(
                      // group23m88 (753:153)
                      child: SizedBox(
                        width: 45*fem,
                        height: 45*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-23-bsz.png',
                          width: 45*fem,
                          height: 45*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // mednameUHS (753:151)
                    margin: EdgeInsets.fromLTRB(35*fem, 0*fem, 0*fem, 0*fem),
                    child: Text(
                      '#Med Name',
                      style: TextStyle (
                        
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.245*ffem/fem,
                        color: Color(0xff34134e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupjsp8AAG (H8y5gopFqqK6RAq7FeJsp8)
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(40*fem),
                  topRight: Radius.circular(40*fem),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupsofrs4g (H8y77S7FM3cGziYm3QSoFr)
                    padding: EdgeInsets.fromLTRB(18*fem, 54*fem, 18*fem, 10*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // formPYp (753:159)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                          width: double.infinity,
                          child: Text(
                            'Form',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.245*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // pill6i8 (753:160)
                          width: double.infinity,
                          child: Text(
                            'Pill',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.245*ffem/fem,
                              color: Color(0xff6d6262),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // line4di4 (753:162)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff8f1f1),
                    ),
                  ),
                  Container(
                    // autogroupcfzn9RW (H8y63xsfvPaV82vyjrCFZn)
                    margin: EdgeInsets.fromLTRB(18.5*fem, 0*fem, 7*fem, 18*fem),
                    width: double.infinity,
                    height: 59*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // durationr52 (753:161)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 34*fem),
                          child: Text(
                            'Duration:',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.245*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // daysxNx (753:164)
                          margin: EdgeInsets.fromLTRB(0*fem, 37*fem, 89.5*fem, 0*fem),
                          child: Text(
                            '10 Days',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.245*ffem/fem,
                              color: Color(0xff6d6262),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupczau3vC (H8y6CNoKajiS3jQRyocZaU)
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                          width: 94*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xfffbe5e5),
                            borderRadius: BorderRadius.circular(20*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Add days',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // line5JLL (753:163)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff8f1f1),
                    ),
                  ),
                  Container(
                    // autogroupbhatd7i (H8y6JscViXhgKw8szFBhAt)
                    margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 7*fem, 11*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupaqqzN5J (H8y6SY4PpkJUuv6tvJaQqz)
                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 69*fem, 0*fem),
                          width: 165*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // timesperdayt3e (753:165)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                width: double.infinity,
                                child: Text(
                                  'Times per Day:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    
                                    fontSize: 19*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.245*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // oncedaily18G (753:167)
                                width: double.infinity,
                                child: Text(
                                  'Once Daily',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    
                                    fontSize: 17*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.245*ffem/fem,
                                    color: Color(0xff6d6262),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupyztz9EU (H8y6XNFgHMz5KrvpTryZTz)
                          width: 94*fem,
                          height: 49*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffbe5e5),
                            borderRadius: BorderRadius.circular(20*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Change',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // line6PuW (753:145)
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff8f1f1),
                    ),
                  ),
                  Container(
                    // autogroupu8z2wRE (H8y7DmG2uvNA66PZCku8Z2)
                    padding: EdgeInsets.fromLTRB(26.33*fem, 30.33*fem, 34*fem, 46*fem),
                    width: double.infinity,
                    height: 273*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupvghif6L (H8y6f7Xmg3CZWFqfKTvgHi)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 75.33*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frameCMA (753:138)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.33*fem, 0*fem),
                                width: 72.35*fem,
                                height: 72.34*fem,
                                child: Image.asset(
                                  'assets/page-1/images/frame-Ada.png',
                                  width: 72.35*fem,
                                  height: 72.34*fem,
                                ),
                              ),
                              Center(
                                // xdaysleftumN (753:137)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.07*fem),
                                  child: Text(
                                    'x Days left',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 4.2666666667*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouprcmrM7a (H8y6n7L7WasuLwF4sArCmr)
                          margin: EdgeInsets.fromLTRB(15.67*fem, 0*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          height: 49*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogrouprwdeUxt (H8y6tXK6MvFU2j2gx4rwDe)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                                width: 107*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xfff76d79),
                                  borderRadius: BorderRadius.circular(20*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Back',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.245*ffem/fem,
                                      color: Color(0xfffffefe),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupzj4cMWt (H8y6xMY3R2YsKiWhR6ZJ4C)
                                width: 107*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xfff76d79),
                                  borderRadius: BorderRadius.circular(20*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Delete',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.245*ffem/fem,
                                      color: Color(0xfffffefe),
                                    ),
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
          ],
        ),
      ),
          );
  }
}
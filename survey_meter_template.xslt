<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dcc="administrativeData" xmlns:si="measurementResults">
<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
<xsl:template match="/dcc:digitalcalibrationCertificate">
    <html>
        <link href='https://fonts.googleapis.com/css?family=Sarabun' rel='stylesheet'>
        <style>
            body{
                font-family: 'Sarabun';
            }
            table {
                padding-left: 60px;
                padding-top: 5px;
                padding-bottom: 5px;
                font-size: 100%;
                font-family: 'Sarabun';
                line-height: 25px;
                width: 100%;
            }
            /*body {
                background-image: url('certificate.png');
                background-repeat: no-repeat;
            }*/

            header {
                padding: 80px;
            }
            .img-container {
                width: 100%;
                height: 200px;
                max-height: 240px;
                overflow: hidden;
                margin: 0;
                position: relative;
            }

            .img-container img {
                position:absolute;
                top: 50%;
                transform: translateY(-50%);
                max-width: 100%;
            }
        </style>
    <body>
        <!--img src="OAP_cer.png" align="center" alt="OAP" width="770" height="200"></img-->
        <br/>
        <header>
            
        </header>

        <h1 style="font-size:24pt;text-align:center">Certificate of Calibration</h1>
        <div>
            <table border="0" style="padding-top: 0px; padding-bottom: 0px;width:100%">
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left;width:30%">Reference Number : </th>
                    <td style="text-align:left"><xsl:value-of select="dcc:uniqueIdentifier"/></td>
                </tr>
                </xsl:for-each>
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left">Instutition :</th>
                    <td style="text-align:left"><xsl:value-of select="dcc:customerName"/></td>
                </tr>
                </xsl:for-each>
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align: left">Address :</th>
                    <td style="text-align:left"><xsl:value-of select="dcc:customerAddress"/></td>
                </tr>
                </xsl:for-each>

                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left">Commitment Date :</th>
                    <td><xsl:value-of select="dcc:commitmentDate"/></td>
                </tr>
                </xsl:for-each>
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left">Calibration Date :</th>
                    <td><xsl:value-of select="dcc:performanceDate"/></td>
                </tr>
                </xsl:for-each>
            </table>    
            <table style="padding-top: 0px; padding-bottom: 0px; line-height: 25px;">
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left">Model :</th>
                    <td><xsl:value-of select="dcc:itemsModel"/></td>
                    <th style="text-align:left">S/N :</th>
                    <td><xsl:value-of select="dcc:itemsIdentification"/></td>
                    <th style="text-align:left">Manuf. :</th>
                    <td><xsl:value-of select="dcc:itemsManufacturer"/></td>
                </tr>
                </xsl:for-each>
            </table>    
            
            <table border="0" style="padding-top:0px;width:100%">
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left;width:30%">Description :</th>
                    <td style="text-align:left"><xsl:value-of select="dcc:itemsDescription"/></td>
                </tr>
                </xsl:for-each>
            
                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left">Reference :</th>
                    <td style="text-align:left"><xsl:value-of select="dcc:calibrationRefNo"/></td>
                </tr>
                </xsl:for-each>

                <xsl:for-each select="dcc:administrativeData">
                <tr>
                    <th style="text-align:left;">Issue Date :</th>
                    <td style="text-align:left"><xsl:value-of select="dcc:issueDate"/></td>
                </tr>
                </xsl:for-each>
                <tr>
                    <th style="text-align: left;">Approved By :</th>
                </tr>
            </table>
            
            <table border="0" style="line-height=0px">
                <tr>
                    <th></th>
                    <th style="padding-top: 200px;"></th>
                </tr>
                <tr>
                    <td style="padding-right:60px"></td>
                    <td style="text-align:center;padding-bottom:0pt"><xsl:value-of select="dcc:administrativeData/dcc:authorized"/></td>
                </tr> 
                <tr>
                    <td></td>
                    <th style="text-align: center;font-size:10pt;padding-top:0px">Head of Ionizing Radiation Metrology Section</th>
                </tr>
            </table> 
            <!--xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text-->
            <p style=";padding-buttom:100px"></p>
            <hr/>

            <xml:for-each select="/dcc:digitalCalibrationCertificate">
                <ol style="text-align:left;font-size:10pt;color:darkblue;padding-buttom=1pt">
                    <li><xsl:value-of select="dcc:administrativeData/dcc:statementP1"/></li>
                    <li><xsl:value-of select="dcc:administrativeData/dcc:statementP2"/></li> 
                </ol>
            </xml:for-each>
            <p style="text-align:right;font-size:9pt;padding-top:30px">Page 1 of 2 Pages</p> 
        </div> 
        
        <!--hr/>
        <table border="0">
            <tr>
                <th style="text-align:center">Reference:</th>
                <th style="text-align:center">Date:</th>
                <th style="text-align:center">Approved by:</th>
                <th style="text-align:center">Performed by:</th>
            </tr>
            <xsl:for-each select="/dcc:digitalCalibrationCertificate">
            <tr>
                <td style="text-align:center"><xsl:value-of select="dcc:administrativeData/dcc:coreDataIdentification"/></td>
                <td style="text-align:center"><xsl:value-of select="dcc:administrativeData/dcc:issueDate"/></td>
                <td></td>
                <td></td>
            </tr>
            </xsl:for-each>
            <br/>
            <xsl:for-each select="/dcc:digitalCalibrationCertificate">
            <tr>
                <td></td>
                <td></td>
                <td style="text-align:center"><xsl:value-of select="dcc:administrativeData/dcc:authorized"/></td>
                <td style="text-align:center"><xsl:value-of select="dcc:administrativeData/dcc:personInCharge"/></td>
            </tr>
            </xsl:for-each>
        </table>
        
        <hr/>
        <p style="text-align:left;font-size:10pt;font-family:Time New Roman;color:darkblue">
            This certificate is consistent with the capabilities that are included in Appendix C of the MRA drawn up by the CIPM.
            Under the MRA, all participating institutes recognize the validity of each other's calibration and measurement
            certificates for the quabtities, ranges and measurement uncertainties specified in Appendix C (for details see http://www.bipm.org).
        </p>
        <br />
        <p style="text-align:center;font-size:9pt;font-family:Time New Roman"> <b>Technopolis Office,</b>3/4-5 Moo 3, Klong 5, Klong Luang, Pathumthani 12120 Thailand, Telephone:66 2577 5100, Facsimile: 66 2577 3659</p>
        <br/-->
        <div style="break-after:page"></div>

        <!--Page 2-->
        <p style="padding:45px"></p>
        <p style="text-align:right">
            Continuation of Certificate of Calibration Number <xsl:for-each select="dcc:administrativeData"><xsl:value-of select="dcc:uniqueIdentifier"/></xsl:for-each>
        </p>
        <hr/>
        <h4 stype="text-align:left;padding:0px">Details of Calibration</h4>
        <table style="font-size:10pt;padding:0pt;line-height:14pt;width:100%">
            <xsl:for-each select="dcc:measurementResults">
            <tr>
                <th style="text-align:left;width:32%;vertical-align:top">Environmental conditions:</th>
                <td style="text-align:left;font-size:10pt"><xsl:value-of select="dcc:influenceCondition"/></td>
            </tr>
            <tr>
                <th style="text-align:left;vertical-align:top">Calibration Method:</th>
                <td style="text-align:left;font-size:10pt"><xsl:value-of select="dcc:measurementMethod"/></td>
            </tr>
            <tr>
                <th style="text-align:left;vertical-align:top">Traceability:</th>
                <td style="text-align:left;font-size:10pt"><xsl:value-of select="dcc:traceability"/></td>
            </tr>
            </xsl:for-each>
        </table>
        <h4 stype="text-align:left">Calibration Results</h4>
        <table border="0" style="font-size:9pt;padding:0pt;line-height:14pt;width:100%">
            <xsl:for-each select="dcc:measurementResults">
                <tr>
                    <th>Radiation <br>quality</br></th> 
                    <th>Standard<sup>*</sup></th>
                    <th>UUC<sup>**</sup><br>Reading</br></th>
                    <th>UUC<p style="font-size:4pt">before</p> <p style="font-size:4pt">Adjustment</p></th>
                    <th>Unit</th>
                    <th>Range</th>
                    <th>Calibration<br>Factor</br></th>
                    <th>U(%)</th>
                </tr>
                
                <tr>
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[1]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[2]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[3]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[4]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[5]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[6]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[7]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <hr/>
                        <xsl:for-each select="si:results[8]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                </tr>

            </xsl:for-each>
        </table>
        
        <sub style="text-align:left;font-size:8pt">
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:statementP3"/></xsl:for-each></sub>
        <br/>
        <sub style="text-align:left;font-size:8pt">
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:statementP4"/></xsl:for-each></sub>

        <p style="text-align:left;font-size:10pt;padding-bottom:0px;line-height:16pt"><b>Explaination : </b>
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:measurementOfLength"/></xsl:for-each></p>
        <p style="line-height:16pt;text-align:left;font-size:10pt;margin-top:-10px;padding-right:0px;text-indent:80px">
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:statementP7"/></xsl:for-each></p>

        <p style="text-align:left;font-size:10pt;line-height:16pt"><b>Uncertainties of Calibration : </b>
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:uncertainty"/></xsl:for-each></p>

        <table border="0" style="font-size:11pt;padding:0pt;line-height:16pt;width:100%">
        
            <tr>
                <th style="padding-top:30px;"></th>
            </tr>
            <tr>
                <td style="text-align:center;padding:0pt">Calibrated by</td>
                <td></td>
                <td style="text-align:center;padding:0pt">Verified by</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align:center;padding:0pt">(<xsl:value-of select="dcc:administrativeData/dcc:personInCharge"/>)</td>
                <td></td>
                <td style="text-align:center;padding:0pt">(<xsl:value-of select="dcc:administrativeData/dcc:personInVerify"/>)</td>
            </tr>
          
        </table>
        <p style="text-align:left;font-size:10pt;line-height:16pt">
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:statementP5"/></xsl:for-each></p>
        <p style="text-align:center;font-size:10pt;line-height:16pt">
            <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:statementP6"/></xsl:for-each></p>
        <table style="line-height=0px">
            <tr>
                <th style="padding-top: 20px;"></th>
            </tr>
        </table> 
        <!--h2 style="text-align:left;font-size:14pt"><b>Measurement of length</b></h2>
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:measurementOfLength"/></xsl:for-each>
        <h2 style="text-align:left;font-size:14pt"><b>UNCERTAINTIES OF MEASUREMENT</b></h2>
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:uncertainty"/></xsl:for-each>
        <h2 style="text-align:left;font-size:14pt"><b>TRACEABILITY</b></h2>
        <xsl:for-each select="dcc:measurementResults"><xsl:value-of select="dcc:traceability"/></xsl:for-each-->
        <p style="text-align:right;font-size:9pt">Page 2 of 2 Pages</p>    
        <!--div style="break-after:page"></div>

        <p style="text-align:right;font-size:9pt">Page 3 of 3 Pages</p>
        <p style="text-align:left">
            Continuation of Certificate of Calibration Number <xsl:for-each select="dcc:administrativeData"><xsl:value-of select="dcc:uniqueIdentifier"/></xsl:for-each>
        </p>
        <hr/>
        <h2 style="text-align:left;font-size:14pt"><b>Measurement Results</b></h2>

        <table border="1">

            <xsl:for-each select="dcc:measurementResults">

                <tr>
                    <td style="text-align:center">
                        <xsl:for-each select="si:results[1]">
                            <xsl:value-of select="si:name"/>
                        </xsl:for-each>
                        <xsl:for-each select="si:results[1]">
                            (<xsl:value-of select="si:unit"/>)
                        </xsl:for-each>
                        <hr/>
                        <xsl:for-each select="si:results[1]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <xsl:for-each select="si:results[2]/si:name">
                            <xsl:value-of select="."/>
                        </xsl:for-each>
                        <xsl:for-each select="si:results[2]">
                            (<xsl:value-of select="si:unit"/>)
                        </xsl:for-each>
                        <hr/>
                        <xsl:for-each select="si:results[2]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>
                
                    <td style="text-align:center">
                        <xsl:for-each select="si:results[3]/si:name">
                            <xsl:value-of select="."/>
                        </xsl:for-each>
                        <xsl:for-each select="si:results[3]">
                            (<xsl:value-of select="si:unit"/>)
                        </xsl:for-each>
                        <hr/>
                        <xsl:for-each select="si:results[3]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>

                    <td style="text-align:center">
                        <xsl:for-each select="si:results[4]/si:name">
                            <xsl:value-of select="."/>
                        </xsl:for-each>
                        <xsl:for-each select="si:results[4]">
                            (<xsl:value-of select="si:unit"/>)
                        </xsl:for-each>
                        <hr/>
                        <xsl:for-each select="si:results[4]/si:value">
                            <xsl:value-of select="."/>
                            <br/>
                        </xsl:for-each>
                    </td>

                </tr>
            </xsl:for-each>
        </table-->
    </body>
    </link>
</html>

</xsl:template>
</xsl:stylesheet>
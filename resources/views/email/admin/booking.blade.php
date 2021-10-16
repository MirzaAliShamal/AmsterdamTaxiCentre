<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;">
    <meta name="format-detection" content="telephone=no"/>
    <style>
    body { margin: 0; padding: 0; min-width: 100%; width: 100% !important; height: 100% !important;}
    body, table, td, div, p, a { -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%; }
    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse !important; border-spacing: 0; }
    img { border: 0; line-height: 100%; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; }
    #outlook a { padding: 0; }
    .ReadMsgBody { width: 100%; } .ExternalClass { width: 100%; }
    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }
    @media all and (min-width: 560px) {
    .container { border-radius: 8px; -webkit-border-radius: 8px; -moz-border-radius: 8px; -khtml-border-radius: 8px; }
    }
    a, a:hover {
    color: #000;
    }
    .footer a, .footer a:hover {
    color: #828999;
    }
    </style>
    <title>Booking Notification</title>
  </head>
  <body topmargin="0" rightmargin="0" bottommargin="0" leftmargin="0" marginwidth="0" marginheight="0" width="100%" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%; height: 100%; -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%;">
    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%;" class="background"><tr><td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;">
      <table border="0" cellpadding="0" cellspacing="0" align="center"
        width="500" style="border-collapse: collapse; border-spacing: 0; padding: 0; width: inherit;
        max-width: 500px;" class="wrapper">

        <tr>
          <td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;  padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 24px; font-weight: bold; line-height: 130%;
            padding-top: 5px;
            font-family: sans-serif;" class="header">
            Amsterdam Taxi Centrale!
          </td>
        </tr>
        <tr>
          <td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;
            padding-top: 24px;" class="line"><hr
            color="#565F73" align="center" width="100%" size="1" noshade style="margin: 0; padding: 0;" />
          </td>
        </tr>


        <!------------------------------------------------------------------------->
                            <!--ENGLISH Email content--->
        <!------------------------------------------------------------------------->



        <tr>
          <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
            padding-top: 15px;
            font-family: sans-serif; font-style: italic;" class="paragraph">
            Beste Beheerder,
          </td>
        </tr>

        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
              padding-top: 10px;
              font-family: sans-serif; justify-content: center;" class="paragraph">
              <h3>Boeking ID: {{ $book->uuid }}</h3>
            </td>
        </tr>

        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
              padding-top: 10px;
              font-family: sans-serif; justify-content: center;" class="paragraph">
              U heeft een boeking ontvangen van {{ $book->name }}. Controleer het dashboard.
            </td>
        </tr>


        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
                padding-top: 30px;
                color: #000;
                font-family: sans-serif; justify-content: center;" class="paragraph">

                <div style="padding-bottom: 5px;">Van: <strong style="color: #000;font-size: 18px;">{{ $book->from }}</strong></div>
                <div style="padding-bottom: 5px;">Naar: <strong style="color: #000;font-size: 18px;">{{ $book->to }}</strong></div>

            </td>
        </tr>

        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
              padding-top: 30px;
              color: #000;
              font-family: sans-serif; justify-content: center;" class="paragraph">

                <div style="padding-bottom: 5px;">Ophaaldatum: <strong style="color: #000;font-size: 18px;">{{ $booking['pickup_date'] }}</strong></div>
                <div style="padding-bottom: 5px;">Ophaal tijd: <strong style="color: #000;font-size: 18px;">{{ $booking['pickup_time'] }}</strong></div>
                
                    
                @If(isset($booking['return_date']))
                <div style="padding-bottom: 5px;">Terugkeer datum: <strong style="color: #000;font-size: 18px;">{{ $booking['return_date'] }}</strong></div>
                <div style="padding-bottom: 5px;">Terugkeer tijd: <strong style="color: #000;font-size: 18px;">{{ $booking['return_time'] }}</strong></div>
                @endif
                
                
            </td>
        </tr>
        
        
        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
              padding-top: 30px;
              color: #000;
              font-family: sans-serif; justify-content: center;" class="paragraph">

                <div style="padding-bottom: 5px;">Voertuigtype: <strong style="color: #000;font-size: 18px;">{{ $book->vehicle_type }}</strong></div>
                <div style="padding-bottom: 5px;">Personen : <strong style="color: #000;font-size: 18px;">{{ $book->passenger }}</strong></div>
                <div style="padding-bottom: 5px;">Grote koffers: <strong style="color: #000;font-size: 18px;">{{ $book->large_cases }}</strong></div>
                <div style="padding-bottom: 5px;">Kleine koffers: <strong style="color: #000;font-size: 18px;">{{ $book->small_cases }}</strong></div>
                <div style="padding-bottom: 5px;">Betalingswijze: <strong style="color: #000;font-size: 18px;">{{ $book->payment_method }}</strong></div>
                <div style="padding-bottom: 5px;">Naam: <strong style="color: #000;font-size: 18px;">{{ $book->name }}</strong></div>
                <div style="padding-bottom: 5px;">Telefoonnummer: <strong style="color: #000;font-size: 18px;">{{ $booking['phone'] }}</strong></div>
                <div style="padding-bottom: 5px;">E-mail: <strong style="color: #000;font-size: 18px;">{{ $booking['email'] }}</strong></div>
                
                <div style="padding-bottom: 5px;">Overige instructies: <strong style="color: #000;font-size: 18px;">{{ $book->instruction }}</strong></div>
                
                
                @if($booking['ship_name'] != "")
                        <div style="padding-bottom: 5px;">Ship Naam: <strong style="color: #000;font-size: 18px;"> {{ $booking['ship_name'] }}</strong></div>
                @endif
                
                
            </td>
        </tr>
            
            
            @if($booking['flight_no'] != "")
            
                <tr>
                    <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
                      padding-top: 30px;
                      color: #000;
                      font-family: sans-serif; justify-content: center;" class="paragraph">
        
                        <div style="padding-bottom: 5px;">Flight Number: <strong style="color: #000;font-size: 18px;"> {{ $booking['flight_no'] }}</strong></div>
                        <div style="padding-bottom: 5px;">Arrival From: <strong style="color: #000;font-size: 18px;"> {{ $booking['arrival_from'] }}</strong></div>
                        <div style="padding-bottom: 5px;">Airline: <strong style="color: #000;font-size: 18px;"> {{ $booking['airline'] }}</strong></div>
                        <div style="padding-bottom: 5px;">Meeting Point: <strong style="color: #000;font-size: 18px;"> {{ $booking['meeting_point'] }}</strong></div>
                    </td>
                </tr>
                       
            @endif
            
            
            
            
        

        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;
              padding-top: 30px;
              color: #000;
              font-family: sans-serif; justify-content: center;" class="paragraph">

                <div style="padding-bottom: 5px;">Tariefprijs: <strong style="color: #000;font-size: 18px;">€ {{ ceil($book->fare) }}</strong></div>
            </td>
        </tr>
        <tr>
          <td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;
            padding-top: 25px;
            padding-bottom: 5px;" class="button">
            <a href="" target="_blank" style="text-decoration: none;">
              <table border="0" cellpadding="0" cellspacing="0" align="center" style="max-width: 240px; min-width: 120px; border-collapse: collapse; border-spacing: 0; padding: 0;">
                <tr>
                  <td align="center" valign="middle" style="padding: 12px 24px; margin: 0; text-decoration: none; border-collapse: collapse; border-spacing: 0; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -khtml-border-radius: 4px;"
                    bgcolor="#FBB650">
                    <a target="_blank" style="text-decoration: none;
                      color: #FFFFFF; font-family: sans-serif; font-size: 17px; font-weight: bold; line-height: 120%;"
                      href="{{ route('admin.booking.list') }}">
                      Ga naar Boekingen
                    </a>
                  </td>
                </tr>
              </table>
            </a>
          </td>
        </tr>
        <tr>
            <td align="left" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 15px; font-weight: 400; line-height: 160%;
              padding-top: 15px;
              color: #000;
              font-family: sans-serif;" class="paragraph">
              Bedankt,<br/>
              Amsterdam Taxi Centrale
            </td>
          </tr>


        <!------------------------------------------------------------------------->
                            <!--END ENGLISH Email content--->
        <!------------------------------------------------------------------------->

        <tr>
            <td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;
              padding-top: 30px;" class="line"><hr
              color="#000000" align="center" width="100%" size="1" noshade style="margin: 0; padding: 0;" />
            </td>
        </tr>

        <tr>
              <td align="center" valign="top" style="border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 13px; font-weight: 400; line-height: 150%;
                  padding-top: 10px;
                  padding-bottom: 20px;
                  color: #828999;
                  font-family: sans-serif;" class="footer">
                  Deze e-mail is naar u verzonden omdat u gebruik heeft gemaakt van het platform Amsterdam Taxi Centrale.
                  © Auteursrechten 2021 door Amsterdam Taxi Centrale. Alle rechten voorbehouden.
              </td>
          </tr>
      </table>
    </td></tr></table>
  </body>
</html>

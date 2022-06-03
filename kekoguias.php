<?php
###############################################################################
#                               Habbink CMS                                   #
#                     Desarrollado por Matias Portales                        #
#                                                                             #
#    No seas tan cagado y ten algo de  Respeto por los derechos de autor      #
#                                                                             #
#                     Al descargar esta CMS tienes la                         #
#             Libertad de moficar tanto en Diseño como en codigo              #
#   (Siempre y cuando se respeten los derechos del autor original de la cms)  #
#                                                                             #
###############################################################################

require ('global.php');

include "Templates/Alertas.php";
?>



<html lang="es"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>KekoGuias - Kuinz Fansite</title>
<link rel="icon" type="image/png" href="../images/favicon.ico">
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link rel="dns-prefetch" href="https://static.habbo-happy.net/">
<link rel="dns-prefetch" href="https://www.habbo.es/">
<link rel="dns-prefetch" href="https://habbo-stories-content.s3.amazonaws.com/">
<link rel="preload" as="style" href="https://fonts.googleapis.com/css?family=Ubuntu:400,700&amp;display=swap">
<link rel="preload" as="style" href="https://fonts.googleapis.com/css?family=Raleway:500,700&amp;display=swap">
<link rel="preload" as="style" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/themes/smoothness/jquery-ui.min.css">
<link rel="preload" as="style" href="https://static.habbo-happy.net/R-2007-2401-A-214u1o3hw1/css/style.css">
<link rel="preload" as="style" href="https://static.habbo-happy.net/R-2007-2401-A-214u1o3hw1/css/lightbox.css">
<link rel="preload" as="script" href="https://static.habbo-happy.net/R-2007-2401-A-214u1o3hw1/js/javascript.js">
<link rel="preload" as="script" href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
<link rel="preload" as="script" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
<link rel="preload" as="image" href="https://static.habbo-happy.net/img/header/header_septiembrehadas.png">
<link rel="preload" as="image" href="https://static.habbo-happy.net/img/content/hhsprite22.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:400,700&amp;display=swap">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:500,700&amp;display=swap">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/themes/smoothness/jquery-ui.min.css">
<link rel="stylesheet" href="//static.habbo-happy.net/R-2007-2401-A-214u1o3hw1/css/style.css">
<link rel="alternate" href="https://www.habbo-happy.net" hreflang="es">
<link rel="alternate" href="https://en.habbo-happy.net" hreflang="en">
<script src="https://www.googletagservices.com/activeview/js/current/osd.js"></script><script src="https://partner.googleadservices.com/gampad/cookie.js?domain=www.kuinz-fansite.space&amp;callback=_gfp_s_&amp;client=ca-pub-1805674069079400&amp;cookie=ID%3D6a7a3c115cc0b611-2229ecf6f97a0061%3AT%3D1632167619%3ART%3D1632167619%3AS%3DALNI_MaFD-4twGEYrRv8tvrOUXpE-ag_Zw"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://pagead2.googlesyndication.com/pagead/managed/js/adsense/m202109170101/show_ads_impl_fy2019.js" id="google_shimpl"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<meta name="description" content="Fansite de la comunidad virtual Habbo. Tenemos el objetivo de informar, entretener y reunir a todos aquellos fanaticos.">
<meta property="og:title" content="">
<meta property="og:description" content="Fansite de la comunidad virtual Habbo. Tenemos el objetivo de informar, entretener y reunir a todos aquellos fanaticos.">
<meta property="og:image" content="">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@HabboHappy">
<meta name="keywords" content="habbo hotel, mundo, virtual, red social, gratis, comunidad, personaje, chat, online, adolescente, roleplaying, unirse, social, grupos, forums, seguro, jugar, juegos, amigos, adolescentes, raros, furni raros, coleccionable, crear, coleccionar, conectar, furni, muebles, mascotas, diseño de salas, compartir, expresión, placas, pasar el rato, música, juegos en línea, juegos multijugador, multijugador masivo, web fan, webfan, web, habbo, créditos, noticias, staffs, concursos, eventos, duckets, raros, regalos, foro">
<meta name="theme-color" content="#01579B">
<style>
        header {
            background: url(../images/banner.png) repeat 0px bottom #0B5EA0;
        }
        </style>
<meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9"><meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><link rel="preload" href="https://adservice.google.co.ve/adsid/integrator.js?domain=www.kuinz-fansite.space" as="script"><script type="text/javascript" src="https://adservice.google.co.ve/adsid/integrator.js?domain=www.kuinz-fansite.space"></script><link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.kuinz-fansite.space" as="script"><script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.kuinz-fansite.space"></script></head>
<body>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-1805674069079400",
    enable_page_level_ads: true,
    overlays: {bottom: true}
  });
</script>
<header>
<div class="left">
<a href="/index.php"><img src="../images/logo.png"></a>
</div>


<?php

   $mipefil = $lang[16];

   

   $ajuste = $lang[17];

   

   $cerrar = $lang[18];

   

   function whos_stats($id){ $f = json_decode(file_get_contents("http://whos.amung.us/stats/data/?k=".$id)); return $f->total_count; } 

   $visitantes = whos_stats("$contador");

   

   if ($visitantes == 1) {

     $texto_visitantes = $lang[14];

   } else {

     $texto_visitantes = $lang[15];

   }

if($_SESSION["logeado"] == "SI"){

$query = $link->query('SELECT * FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rango = $row['rank'];
  $portada_user = $row['portada'];
  $avatar_user = $row['avatar'];
  $fichas_user = $row['fichas'];
  $puntos_user = $row['puntos'];
}

$query = $link->query('SELECT * FROM usuarios_amigos WHERE  (user = "' .$username. '") AND (estado_solicitud = "Pendiente")');
$solicitudes = mysqli_num_rows($query);

if ($solicitudes != 0) {
$notificacion_solicitud = "<span class='badge'>$solicitudes</span>";
} else { 
  $notificacion_solicitud = ""; 
}
} else {
  $portada_user = './images/barras/b3.png';
  $avatar_user = "./images/avatars/noavatar.png";
}

if($_SESSION["logeado"] == "SI"){

$query = $link->query('SELECT tokens FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $tokens_user = $row['tokens'];
}
 
}
if($_SESSION["logeado"] == "SI"){
  $fichas_puntos = "";
 if("$rango" >= "3"){
$contenido_user = "<span><a style='color:#fff;margin-left: 6px;' href='perfil.php?user=$username'>$username</a></span>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php'>$lang[17]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?mensajes'>$lang[20]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?regalos'>$lang[22]</a>
  <a style='color:#fff;margin-left: 8px;' href='kernel/login/cerrar.php'>$lang[23]</a>";
} else {
$contenido_user = "<span><a style='color:#fff;margin-left: 6px;' href='perfil.php?user=$username'>$lang[19]</a></span>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php'>$lang[17]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?mensajes'>$lang[20]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?regalos'>$lang[22]</a>
  <a style='color:#fff;margin-left: 8px;' href='kernel/login/cerrar.php'>$lang[23]</a>
  </<span></span>
  ";
}
} else {
  $contenido_user = "<span style='margin-right: 30px;'><a style='color:#fff;' href='login.php'>Iniciar Sesion</a></span><span><a style='color:#fff;' href='registro.php'>$lang[25]</a></span>";
}

$bannertop = "
<div class='col-md-4' style='
    
    border-radius: 4px;
    padding: 5px;
    margin-top: 1px;
'>
    <div style='
    width: 40%;
    height: 100px;
    margin-left:600px;margin-top:-5px;
    '><div style='
    width: 100%;
            '><div style='
    border: 2px solid rgba(255, 255, 255, 0.24);
    border-radius: 12px;
'><div style='
    background-image: url($portada_user);
    width: 100%;
    height: 100px;
    border-radius: 10px;
    background-size: 100%;
    '><img src='$avatar_user' style='
    width: 80px;
    height: 80px;
    border-radius: 100%;
    border: 1px solid #fff;
    margin: 10px;
'>$fichas_puntos</div></div>
</div>
<div style='
    color: #fff;
    text-shadow: 0px 1px 1px rgba(0, 0, 0, 0.88);
    margin-top: 1px;
'>
    <center>$contenido_user </center></div></div>
</div>

  
";

   $menu = "$bannertop
</div>
</div></div>
      
            ";



        

   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

   while($row = mysqli_fetch_array($query))

   {

     $rango = $row['rank'];

   }

   

   $query = $link->query('SELECT * FROM usuarios_amigos WHERE  (user = "' .$username. '") AND (estado_solicitud = "Pendiente")');

   $solicitudes = mysqli_num_rows($query);

   

   if ($solicitudes != 0) {

   $notificacion_solicitud = "<span class='badge'>$solicitudes</span>";

   } else { 

     $notificacion_solicitud = ""; 

   }

   if($_SESSION["logeado"] == "SI"){

    echo "$menu";

    echo '<ul class="nav navbar-nav navbar-right">';

   
    
    if("$rango" >= "2"){
      echo '<a href="/shop-elite.php"><button class="app" title="Esto hace referencia que eres Elite en Kuinz." style="position: fixed;z-index: 3; left: 20px; border:none; bottom:20px; cursor: pointer; outline: none; background:none;"><img src="https://kuinz-fansite.space/images/elite-k.png"> <font style="color:rgba(0,0,0,0.6);">Tienda Elite</font></button></a>';
    }
     
     if("$rango" >= "4"){
      echo '<a href="/hk/index.php"><button class="app-mod" title="Panel de Control Administrativo" style="position: fixed;z-index: 4; left: 26px; border:none; bottom:80px; cursor: pointer; outline: none; background:none;"><img src="https://images-kuinz.online/i/icon-hk.png"></button></a>';
    }
    
     ?>

<style type="text/css">
  .app:hover {
    padding-right: 1rem;
    border-radius: 1rem 0 0 1rem;
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
  }
  .app-mod:hover {
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
  }
</style>
</ul> 

</li>

</ul> 

 

                           

<?php

   }  else {

    echo "$menu";



   }

   ?>

</div><!--/.nav-collapse -->

</div><!--/.container-fluid -->

</nav>
</div>
</header>
<nav class="bglayout">
<div style="display: table;margin: left;">
<a href="https://www.kuinz-fansite.space/"><div class="bselected"><div id="nav-home"></div>Inicio</div></a>
<a href="/noticias.php"><div class="bselected"> Noticias</div></a><a href="/equipo.php"><div class="bselected"> Equipo</div></a><a href="/furni.php"><div class="bselected"> Catalogo</div></a><a href="/tienda.php"><div class="bselected"> Tienda</div></a> <a href="/tienda-dev.php"><div class="bselected"> Tienda Dev</div></a><a href="/recargar.php"><div class="bselected"> Recargar</div></a>
</div>
</nav>
<div class="center" style="height: auto !important;">
<div id="maincontent" style="height: auto !important;">
<style>
                    .lehspace {
                        width: calc(25% - 2px);
                    }
                </style>

	<?php
								$resultado = $link->query("SELECT * FROM noticias ORDER BY id DESC limit 4");
							while($row = mysqli_fetch_array($resultado)){
								?>

<a href="articulo.php?id=<?php echo " $row[id] "; ?>">
<div class="lehspace" style="background-image:url(<?php echo " $row[imagen] "; ?>);background-position:center;">
<div class="lehtitle">
<?php echo " $row[titulo] "; ?><br>
<small></small>
</div>
</div>
</a>

						<?php } ?>






<div class="layer bglayout" style="margin:left;">
<span class="lehtag" style="background:#003861;">GUIAS KEKOCITY 2021</span><span class="lehtag" style="background:#003861;">KUINZ FANSITE</span><span class="lehtag" style="background:#003861;">KEKOCITY LA CIUDAD VIRTUAL</span><span class="lehtag" style="background:#003861;">FANSITE KEKOCITY</span>

</div>


<div id="bleftbig">
<div class="purple">
Últimas publicaciones
</div>
<div class="content monosub">
<?php
								$resultado = $link->query("SELECT * FROM kekoguias ORDER BY id DESC limit 100");
							while($row = mysqli_fetch_array($resultado)){
								?>


<div class="chbox" style="width:98%;height:<?php echo " $row[categoria] "; ?>;float:left;">
<div class="chbavatar" style="background:url('<?php echo " $row[imagen] "; ?>') 64px -8px, url('https://i.imgur.com/PyCN3Gb.png');"></div>
<div class="chbdetails">
<div class="radius" style="color:white;padding: 0px 3px 0px 3px;display:inline;background-color:#005BCA;"><?php echo " $row[autor] "; ?></div>
<div class="radius" style="padding: 0px 3px 0px 3px;display:inline;background-color: rgb(66, 66, 66);color: white;"><?php echo " $row[fecha] "; ?></div>
</div>
<div class="chbtitle"><?php echo " $row[titulo] "; ?></div>
<div class="chbsubtitle" style="max-height:100%;height:100%;"><?php echo " $row[noticia] "; ?></div>
</div>


						<?php } ?>



</div>
</div>
</div>
<footer class="bglayout">
<div class="websprite fansitebadge"><img src="https://v2.kekocity.com/uploads/02/4/3/0/e/2430e023206d335efa28d6f2607b872d.png">
</div>
© Fansite Oficial
| 
<br><br><small><?php echo $lang[289]; ?> <?php echo $lang[290]; ?></small>
<hr>

</footer></html>
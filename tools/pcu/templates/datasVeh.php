<?php
if (isset($_SESSION["usuario"])) {
    $User = $_SESSION["usuario"];
    $stmt = $conn->prepare("SELECT * FROM usuarios WHERE Username = :usuario");
    $stmt->bindParam(":usuario", $User, PDO::PARAM_STR);
    $stmt->execute();
    while ($datos = $stmt->fetch()) {
        $auto1 = $datos["Modelo"];
        $precio = $datos["Precio"];
        $DañosAUTOS1 = $datos["VidaV"];
        $Patente1 = $datos["1Patente"];
        $moneda = $datos["vMoneda"];
        $Color1 = $datos["Color1"];
        $Color2 = $datos["Color2"];
        $vGas = $datos["vGas"];
        $vBaul = $datos["vBaul"];
        $vBaul2 = $datos["vBaul2"];
        $vBaul3 = $datos["vBaul3"];
        $vBaul4 = $datos["vBaul4"];
        $vBaul5 = $datos["vBaul5"];
        $vBaul6 = $datos["vBaul6"];
        $vBaul7 = $datos["vBaul7"];
        $vBaul8 = $datos["vBaul8"];
        $Contador = 0;
        if ($vBaul > 0):
            $Contador++;
        endif;
        if ($vBaul2 > 0):
            $Contador++;
        endif;
        if ($vBaul3 > 0):
            $Contador++;
        endif;
        if ($vBaul4 > 0):
            $Contador++;
        endif;
        if ($vBaul5 > 0):
            $Contador++;
        endif;
        if ($vBaul6 > 0):
            $Contador++;
        endif;
        if ($vBaul7 > 0):
            $Contador++;
        endif;
        if ($vBaul8 > 0):
            $Contador++;
        endif;
        $auto2 = $datos["Modelo2"];
        $precio2 = $datos["Precio2"];
        $DañosAUTOS2 = $datos["VidaV2"];
        $Patente2 = $datos["2Patente"];
        $moneda2 = $datos["v2Moneda"];
        $V2Color1 = $datos["2Color1"];
        $V2Color2 = $datos["2Color2"];
        $v2Gas = $datos["v2Gas"];
        $v2Baul = $datos["v2Baul"];
        $v2Baul2 = $datos["v2Baul2"];
        $v2Baul3 = $datos["v2Baul3"];
        $v2Baul4 = $datos["v2Baul4"];
        $v2Baul5 = $datos["v2Baul5"];
        $v2Baul6 = $datos["v2Baul6"];
        $v2Baul7 = $datos["v2Baul7"];
        $v2Baul8 = $datos["v2Baul8"];
        $Contador2 = 0;
        if ($v2Baul > 0):
            $Contador2++;
        endif;
        if ($v2Baul2 > 0):
            $Contador2++;
        endif;
        if ($v2Baul3 > 0):
            $Contador2++;
        endif;
        if ($v2Baul4 > 0):
            $Contador2++;
        endif;
        if ($v2Baul5 > 0):
            $Contador2++;
        endif;
        if ($v2Baul6 > 0):
            $Contador2++;
        endif;
        if ($v2Baul7 > 0):
            $Contador2++;
        endif;
        if ($v2Baul8 > 0):
            $Contador2++;
        endif;
        $auto3 = $datos["Modelo3"];
        $precio3 = $datos["Precio3"];
        $DañosAUTOS3 = $datos["VidaV3"];
        $Patente3 = $datos["3Patente"];
        $moneda3 = $datos["v3Moneda"];
        $V3Color1 = $datos["3Color1"];
        $V3Color2 = $datos["3Color2"];
        $v3Gas = $datos["v3Gas"];
        $v3Baul = $datos["v3Baul"];
        $v3Baul2 = $datos["v3Baul2"];
        $v3Baul3 = $datos["v3Baul3"];
        $v3Baul4 = $datos["v3Baul4"];
        $v3Baul5 = $datos["v3Baul5"];
        $v3Baul6 = $datos["v3Baul6"];
        $v3Baul7 = $datos["v3Baul7"];
        $v3Baul8 = $datos["v3Baul8"];
        $Contador3 = 0;
        if ($v3Baul > 0):
            $Contador3++;
        endif;
        if ($v3Baul2 > 0):
            $Contador3++;
        endif;
        if ($v3Baul3 > 0):
            $Contador3++;
        endif;
        if ($v3Baul4 > 0):
            $Contador3++;
        endif;
        if ($v3Baul5 > 0):
            $Contador3++;
        endif;
        if ($v3Baul6 > 0):
            $Contador3++;
        endif;
        if ($v3Baul7 > 0):
            $Contador3++;
        endif;
        if ($v3Baul8 > 0):
            $Contador3++;
        endif;
        $auto4 = $datos["Modelo4"];
        $precio4 = $datos["Precio4"];
        $Patente4 = $datos["4Patente"];
        $DañosAUTOS4 = $datos["VidaV4"];
        $moneda4 = $datos["v4Moneda"];
        $V4Color1 = $datos["4Color1"];
        $V4Color2 = $datos["4Color2"];
        $v4Gas = $datos["v4Gas"];
        $v4Baul = $datos["v4Baul"];
        $v4Baul2 = $datos["v4Baul2"];
        $v4Baul3 = $datos["v4Baul3"];
        $v4Baul4 = $datos["v4Baul4"];
        $v4Baul5 = $datos["v4Baul5"];
        $v4Baul6 = $datos["v4Baul6"];
        $v4Baul7 = $datos["v4Baul7"];
        $v4Baul8 = $datos["v4Baul8"];
        $Contador4 = 0;
        if ($v4Baul > 0):
            $Contador4++;
        endif;
        if ($v4Baul2 > 0):
            $Contador4++;
        endif;
        if ($v4Baul3 > 0):
            $Contador4++;
        endif;
        if ($v4Baul4 > 0):
            $Contador4++;
        endif;
        if ($v4Baul5 > 0):
            $Contador4++;
        endif;
        if ($v4Baul6 > 0):
            $Contador4++;
        endif;
        if ($v4Baul7 > 0):
            $Contador4++;
        endif;
        if ($v4Baul8 > 0):
            $Contador4++;
        endif;
    }
} else {
    echo "<script>window.location='ingresar.php';</script>";
}
if ($auto1 > 400):
    $auto1sitiene = 1;
endif;
if ($auto2 > 400):
    $auto2sitiene = 1;
endif;
if ($auto3 > 400):
    $auto3sitiene = 1;
endif;
if ($auto4 > 400):
    $auto4sitiene = 1;
endif;
$DañosAUTO1 = 100 - intval($DañosAUTOS1 / 10);
$DañosAUTO2 = 100 - intval($DañosAUTOS2 / 10);
$DañosAUTO3 = 100 - intval($DañosAUTOS3 / 10);
$DañosAUTO4 = 100 - intval($DañosAUTOS4 / 10);

function ObtenerCombustibleVeh($i)
{
    switch ($i) {
        case 578:
            $combus = 230;
            return $combus;
        default:
            $combus = 100;
            return $combus;
    }
}
function ObtenerMaltero($i)
{
    switch ($i) {
        case 403:
            $maletero = 8;
            return $maletero;
        case 413:
            $maletero = 8;
            return $maletero;
        case 414:
            $maletero = 8;
            return $maletero;
        case 431:
            $maletero = 8;
            return $maletero;
        case 437:
            $maletero = 8;
            return $maletero;
        case 440:
            $maletero = 8;
            return $maletero;
        case 443:
            $maletero = 8;
            return $maletero;
        case 459:
            $maletero = 8;
            return $maletero;
        case 482:
            $maletero = 8;
            return $maletero;
        case 499:
            $maletero = 8;
            return $maletero;
        case 514:
            $maletero = 8;
            return $maletero;
        case 515:
            $maletero = 8;
            return $maletero;
        case 578:
            $maletero = 8;
            return $maletero;
        case 400:
            $maletero = 6;
            return $maletero;
        case 404:
            $maletero = 6;
            return $maletero;
        case 418:
            $maletero = 6;
            return $maletero;
        case 422:
            $maletero = 6;
            return $maletero;
        case 470:
            $maletero = 6;
            return $maletero;
        case 478:
            $maletero = 6;
            return $maletero;
        case 489:
            $maletero = 6;
            return $maletero;
        case 495:
            $maletero = 6;
            return $maletero;
        case 505:
            $maletero = 6;
            return $maletero;
        case 543:
            $maletero = 6;
            return $maletero;
        case 554:
            $maletero = 6;
            return $maletero;
        case 579:
            $maletero = 6;
            return $maletero;
        case 605:
            $maletero = 6;
            return $maletero;
        case 448:
            $maletero = 0;
            return $maletero;
        case 461:
            $maletero = 0;
            return $maletero;
        case 462:
            $maletero = 0;
            return $maletero;
        case 463:
            $maletero = 0;
            return $maletero;
        case 468:
            $maletero = 0;
            return $maletero;
        case 471:
            $maletero = 0;
            return $maletero;
        case 521:
            $maletero = 0;
            return $maletero;
        case 522:
            $maletero = 0;
            return $maletero;
        case 581:
            $maletero = 0;
            return $maletero;
        case 586:
            $maletero = 0;
            return $maletero;
        case 481:
            $maletero = 0;
            return $maletero;
        case 509:
            $maletero = 0;
            return $maletero;
        case 510:
            $maletero = 0;
            return $maletero;
        default:
            $maletero = 4;
            return $maletero;
    }
}
if ($DañosAUTO1 > 19 || $DañosAUTO1 < 63) {
    $ColorD = "orange";
}
if ($DañosAUTO1 > 62) {
    $ColorD = "red";
}
if ($DañosAUTO1 < 20) {
    $ColorD = "green";
}
if ($DañosAUTO2 > 19 || $DañosAUTO2 < 63) {
    $ColorD2 = "orange";
}
if ($DañosAUTO2 > 62) {
    $ColorD2 = "red";
}
if ($DañosAUTO2 < 20) {
    $ColorD2 = "green";
}
if ($DañosAUTO3 > 19 || $DañosAUTO3 < 63) {
    $ColorD3 = "orange";
}
if ($DañosAUTO3 > 62) {
    $ColorD3 = "red";
}
if ($DañosAUTO3 < 20) {
    $ColorD3 = "green";
}
if ($DañosAUTO4 > 19 || $DañosAUTO4 < 63) {
    $ColorD4 = "orange";
}
if ($DañosAUTO4 > 62) {
    $ColorD4 = "red";
}
if ($DañosAUTO4 < 20) {
    $ColorD4 = "green";
}
?>
<?php function GetVehicleName($idveh)
{
    if ($idveh == 400) {
        return "Landstalker";
    } elseif ($idveh == 401) {
        return "Bravura";
    } elseif ($idveh == 402) {
        return "Buffalo";
    } elseif ($idveh == 403) {
        return "Linerunner";
    } elseif ($idveh == 404) {
        return "Perenniel";
    } elseif ($idveh == 405) {
        return "Sentinel";
    } elseif ($idveh == 406) {
        return "Dumper";
    } elseif ($idveh == 407) {
        return "Firetruck";
    } elseif ($idveh == 408) {
        return "Trashmaster";
    } elseif ($idveh == 409) {
        return "Stretch";
    } elseif ($idveh == 410) {
        return "Manana";
    } elseif ($idveh == 411) {
        return "Infernus";
    } elseif ($idveh == 412) {
        return "Voodoo";
    } elseif ($idveh == 413) {
        return "Pony";
    } elseif ($idveh == 414) {
        return "Mule";
    } elseif ($idveh == 415) {
        return "Cheetah";
    } elseif ($idveh == 416) {
        return "Ambulancia";
    } elseif ($idveh == 417) {
        return "Leviathan";
    } elseif ($idveh == 418) {
        return "Moonbeam";
    } elseif ($idveh == 419) {
        return "Esperanto";
    } elseif ($idveh == 420) {
        return "Taxi";
    } elseif ($idveh == 421) {
        return "Washington";
    } elseif ($idveh == 422) {
        return "Bobcat";
    } elseif ($idveh == 423) {
        return "MrWhoopee";
    } elseif ($idveh == 424) {
        return "BFInjection";
    } elseif ($idveh == 425) {
        return "Hunter";
    } elseif ($idveh == 426) {
        return "Premier";
    } elseif ($idveh == 427) {
        return "Enforcer";
    } elseif ($idveh == 428) {
        return "Securicar";
    } elseif ($idveh == 429) {
        return "Banshee";
    } elseif ($idveh == 430) {
        return "Predator";
    } elseif ($idveh == 431) {
        return "Bus";
    } elseif ($idveh == 432) {
        return "Rhino";
    } elseif ($idveh == 433) {
        return "Barracks";
    } elseif ($idveh == 434) {
        return "Hotknife";
    } elseif ($idveh == 435) {
        return "+Trailer";
    } elseif ($idveh == 436) {
        return "Previon";
    } elseif ($idveh == 437) {
        return "Coach";
    } elseif ($idveh == 438) {
        return "Cabbie";
    } elseif ($idveh == 439) {
        return "Stallion";
    } elseif ($idveh == 440) {
        return "Rumpo";
    } elseif ($idveh == 441) {
        return "RCBandit";
    } elseif ($idveh == 442) {
        return "Romero";
    } elseif ($idveh == 443) {
        return "Packer";
    } elseif ($idveh == 444) {
        return "Monster";
    } elseif ($idveh == 445) {
        return "Admiral";
    } elseif ($idveh == 446) {
        return "Squalo";
    } elseif ($idveh == 447) {
        return "Seasparrow";
    } elseif ($idveh == 448) {
        return "Pizzaboy";
    } elseif ($idveh == 449) {
        return "Tram";
    } elseif ($idveh == 450) {
        return "+Trailer";
    } elseif ($idveh == 451) {
        return "Turismo";
    } elseif ($idveh == 452) {
        return "Speeder";
    } elseif ($idveh == 453) {
        return "Reefer";
    } elseif ($idveh == 454) {
        return "Tropic";
    } elseif ($idveh == 455) {
        return "Flatbed";
    } elseif ($idveh == 456) {
        return "Yankee";
    } elseif ($idveh == 457) {
        return "Caddy";
    } elseif ($idveh == 458) {
        return "Solair";
    } elseif ($idveh == 459) {
        return "TopfunVan";
    } elseif ($idveh == 460) {
        return "Skimmer";
    } elseif ($idveh == 461) {
        return "PCJ-600";
    } elseif ($idveh == 462) {
        return "Faggio";
    } elseif ($idveh == 463) {
        return "Freeway";
    } elseif ($idveh == 464) {
        return "RCBaron";
    } elseif ($idveh == 465) {
        return "RCRaider";
    } elseif ($idveh == 466) {
        return "Glendale";
    } elseif ($idveh == 467) {
        return "Oceanic";
    } elseif ($idveh == 468) {
        return "Sanchez";
    } elseif ($idveh == 469) {
        return "Sparrow";
    } elseif ($idveh == 470) {
        return "Patroit";
    } elseif ($idveh == 471) {
        return "Quad";
    } elseif ($idveh == 472) {
        return "Coastguard";
    } elseif ($idveh == 473) {
        return "Dinghy";
    } elseif ($idveh == 474) {
        return "Hermes";
    } elseif ($idveh == 475) {
        return "Sabre";
    } elseif ($idveh == 476) {
        return "Rustler";
    } elseif ($idveh == 477) {
        return "ZR-350";
    } elseif ($idveh == 478) {
        return "Walton";
    } elseif ($idveh == 479) {
        return "Regina";
    } elseif ($idveh == 480) {
        return "Comet";
    } elseif ($idveh == 481) {
        return "BMX";
    } elseif ($idveh == 482) {
        return "Burrito";
    } elseif ($idveh == 483) {
        return "Camper";
    } elseif ($idveh == 484) {
        return "Marquis";
    } elseif ($idveh == 485) {
        return "Baggage";
    } elseif ($idveh == 486) {
        return "Dozer";
    } elseif ($idveh == 487) {
        return "Maverik";
    } elseif ($idveh == 488) {
        return "HeliNews";
    } elseif ($idveh == 489) {
        return "Rancher";
    } elseif ($idveh == 490) {
        return "FBIRancher";
    } elseif ($idveh == 491) {
        return "Virgo";
    } elseif ($idveh == 492) {
        return "Greenwood";
    } elseif ($idveh == 493) {
        return "Jetmax";
    } elseif ($idveh == 494) {
        return "H.R.";
    } elseif ($idveh == 495) {
        return "Sandking";
    } elseif ($idveh == 496) {
        return "Blista C.";
    } elseif ($idveh == 497) {
        return "P. Maverik";
    } elseif ($idveh == 498) {
        return "Boxville";
    } elseif ($idveh == 499) {
        return "Benson";
    } elseif ($idveh == 500) {
        return "Mesa";
    } elseif ($idveh == 501) {
        return "RCGoblin";
    } elseif ($idveh == 502) {
        return "H.R.";
    } elseif ($idveh == 503) {
        return "H.R.";
    } elseif ($idveh == 504) {
        return "B.B.";
    } elseif ($idveh == 505) {
        return "Rancher";
    } elseif ($idveh == 506) {
        return "SuperGT";
    } elseif ($idveh == 507) {
        return "Elegant";
    } elseif ($idveh == 508) {
        return "Journey";
    } elseif ($idveh == 509) {
        return "Bike";
    } elseif ($idveh == 510) {
        return "M.Bike";
    } elseif ($idveh == 511) {
        return "Beagle";
    } elseif ($idveh == 512) {
        return "Cropduster";
    } elseif ($idveh == 513) {
        return "Stuntplane";
    } elseif ($idveh == 514) {
        return "Tanker";
    } elseif ($idveh == 515) {
        return "Roadtrain";
    } elseif ($idveh == 516) {
        return "Nebula";
    } elseif ($idveh == 517) {
        return "Majestic";
    } elseif ($idveh == 518) {
        return "Buccaneer";
    } elseif ($idveh == 519) {
        return "Shamal";
    } elseif ($idveh == 520) {
        return "Hydra";
    } elseif ($idveh == 521) {
        return "FCR-900";
    } elseif ($idveh == 522) {
        return "NRG-500";
    } elseif ($idveh == 523) {
        return "HPV1000";
    } elseif ($idveh == 524) {
        return "C.Truck";
    } elseif ($idveh == 525) {
        return "Towtruck";
    } elseif ($idveh == 526) {
        return "Fortune";
    } elseif ($idveh == 527) {
        return "Cadrona";
    } elseif ($idveh == 528) {
        return "FBITruck";
    } elseif ($idveh == 529) {
        return "Willard";
    } elseif ($idveh == 530) {
        return "Forklift";
    } elseif ($idveh == 531) {
        return "Tractor";
    } elseif ($idveh == 532) {
        return "C.Harvester";
    } elseif ($idveh == 533) {
        return "Feltzer";
    } elseif ($idveh == 534) {
        return "Remington";
    } elseif ($idveh == 535) {
        return "Slamvan";
    } elseif ($idveh == 536) {
        return "Blade";
    } elseif ($idveh == 537) {
        return "Freight";
    } elseif ($idveh == 538) {
        return "Brownstreak";
    } elseif ($idveh == 539) {
        return "Vortex";
    } elseif ($idveh == 540) {
        return "Vincent";
    } elseif ($idveh == 541) {
        return "Bullet";
    } elseif ($idveh == 542) {
        return "Clover";
    } elseif ($idveh == 543) {
        return "Sadler";
    } elseif ($idveh == 544) {
        return "Firetruck";
    } elseif ($idveh == 545) {
        return "Hustler";
    } elseif ($idveh == 546) {
        return "Intruder";
    } elseif ($idveh == 547) {
        return "Primo";
    } elseif ($idveh == 548) {
        return "Cargobob";
    } elseif ($idveh == 549) {
        return "Tampa";
    } elseif ($idveh == 550) {
        return "Sunrise";
    } elseif ($idveh == 551) {
        return "Merit";
    } elseif ($idveh == 552) {
        return "UtilityVan";
    } elseif ($idveh == 553) {
        return "Nevada";
    } elseif ($idveh == 554) {
        return "Yosemite";
    } elseif ($idveh == 555) {
        return "Windsor";
    } elseif ($idveh == 556) {
        return "MonsterT1";
    } elseif ($idveh == 557) {
        return "MonsterT2";
    } elseif ($idveh == 558) {
        return "Uranus";
    } elseif ($idveh == 559) {
        return "Jester";
    } elseif ($idveh == 560) {
        return "Sultan";
    } elseif ($idveh == 561) {
        return "Stratum";
    } elseif ($idveh == 562) {
        return "Elegy";
    } elseif ($idveh == 563) {
        return "Raindance";
    } elseif ($idveh == 564) {
        return "RCTiger";
    } elseif ($idveh == 565) {
        return "Flash";
    } elseif ($idveh == 566) {
        return "Tahoma";
    } elseif ($idveh == 567) {
        return "Savanna";
    } elseif ($idveh == 568) {
        return "Bandito";
    } elseif ($idveh == 569) {
        return "+Train";
    } elseif ($idveh == 570) {
        return "+Train";
    } elseif ($idveh == 571) {
        return "Kart";
    } elseif ($idveh == 572) {
        return "Mower";
    } elseif ($idveh == 573) {
        return "Dune";
    } elseif ($idveh == 574) {
        return "Sweepeer";
    } elseif ($idveh == 575) {
        return "Broadway";
    } elseif ($idveh == 576) {
        return "Tornado";
    } elseif ($idveh == 577) {
        return "AT400";
    } elseif ($idveh == 578) {
        return "DFT-30";
    } elseif ($idveh == 579) {
        return "Huntley";
    } elseif ($idveh == 580) {
        return "Stafford";
    } elseif ($idveh == 581) {
        return "BF-400";
    } elseif ($idveh == 582) {
        return "Newsvan";
    } elseif ($idveh == 583) {
        return "Tug";
    } elseif ($idveh == 584) {
        return "+Trailer";
    } elseif ($idveh == 585) {
        return "Emperor";
    } elseif ($idveh == 586) {
        return "Wayfarer";
    } elseif ($idveh == 587) {
        return "Euros";
    } elseif ($idveh == 588) {
        return "Hotdog";
    } elseif ($idveh == 589) {
        return "Club";
    } elseif ($idveh == 590) {
        return "+Train";
    } elseif ($idveh == 591) {
        return "+Trailer";
    } elseif ($idveh == 592) {
        return "Andromada";
    } elseif ($idveh == 593) {
        return "Dodo";
    } elseif ($idveh == 594) {
        return "RCCam";
    } elseif ($idveh == 595) {
        return "Launch";
    } elseif ($idveh == 596) {
        return "LSPD";
    } elseif ($idveh == 597) {
        return "SFPD";
    } elseif ($idveh == 598) {
        return "LVPD";
    } elseif ($idveh == 599) {
        return "Ranger";
    } elseif ($idveh == 600) {
        return "Picador";
    } elseif ($idveh == 601) {
        return "S.W.A.T.";
    } elseif ($idveh == 602) {
        return "Alpha";
    } elseif ($idveh == 603) {
        return "Phoenix";
    } elseif ($idveh == 604) {
        return "Glendale";
    } elseif ($idveh == 605) {
        return "Sadler";
    } elseif ($idveh == 606) {
        return "+Trailer";
    } elseif ($idveh == 607) {
        return "+Trailer";
    } elseif ($idveh == 608) {
        return "+Trailer";
    } elseif ($idveh == 609) {
        return "Boxville";
    } elseif ($idveh == 610) {
        return "+Trailer";
    } elseif ($idveh == 611) {
        return "+Trailer";
    } else {
        return "Unknow";
    }
} ?>

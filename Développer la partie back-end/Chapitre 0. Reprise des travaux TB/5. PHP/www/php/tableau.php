<?php
  $a = array(
  "19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
  "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
  "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
 );


 $valid = $a["19002"] ;
 $i = 0 ;
        foreach($valid as $sub_valid)
        {
            $i++ ;
            if($sub_valid == "Validation")
            {
                echo "La semaine de validation pour le 2ème groupe est la $i<sup>ème</sup> semaine.";
                break ;
            }
         }
 /
?>


<?php
    function calculator($nb1, $di, $nb2)
    {
        $result = 0;

        switch ($di)
        {
            case "+":
                $result = $nb1 + $nb2;
                echo "$nb1 $di $nb2 = $result";
                break;
            case "-":
                $result = $nb1 - $nb2;
                echo "$nb1 $di $nb2 = $result";
                break;
            case "*":
                $result = $nb1 * $nb2;
                echo "$nb1 $di $nb2 = $result";
                break;
            case "/":
                $result = $nb1 / $nb2;
                echo "$nb1 $di $nb2 = $result";
                break;
        }
    }

    calculator(9, "-", 4);
?>
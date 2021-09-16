<html>
<body>
<?php
    $tab = '<table border="1"><tr>';

    for ($i = -1; $i <= 12; $i++)
    {
        if ($i >= 0)
        {
        $tab .= "<th>" . $i . "</th>";
        } 
        else
        {
            $tab .= "<th></th>";
        };
};

    for ($a = 0; $a <= 12; $a++)
    {
    $tab .= '<tr>';
    $tab .= "<th>" . $a . "</th>";

        for ($b = 0; $b <= 12; $b++)
        {
            $tab .= "<td>" . $a * $b . "</td>";
        };
    $tab .= '</tr>';
    };
    
    $tab .= '</table>';

    $tab .= '<tr><td></td></tr>';
    $tab .= '</table>';
    
    echo $tab;
?>
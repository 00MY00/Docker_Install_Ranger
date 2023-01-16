# Crée par Kuroakashiro
chcp 65001
clear
Write-Host "entée [1] pour selement récupérer le MDP"
[string]$user = Read-Host "â–º " 

if ( $user -eq "1" )
{
    $x = docker container ls -l --no-trunc | Select-String "rancher"
    $x = "$x"
    $xx = $x.Split("")
    $IdDocker = $xx[0]
    $x = docker logs $IdDocker 2>&1 | Select-String "Bootstrap Password:"
    $x = "$x"
    $xx = $x.Split(": ")
    $MDP = $xx[8]
    clear
    clear
    http://localhost
    Write-Host "####################"
    Write-Host "# Wotre MDP est    #"
    Write-Host "####################"
    Write-Host "User : admin"
    Write-Host "MDP  : $MDP"
    Write-Host "CTRL + C pour Exit"
    Sleep-Host 300
}

else {
    docker run --privileged -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher

    $x = docker container ls -l --no-trunc | Select-String "rancher"
    $x = "$x"
    $xx = $x.Split("")
    $IdDocker = $xx[0]
    $x = docker logs $IdDocker 2>&1 | Select-String "Bootstrap Password:"
    $x = "$x"
    $xx = $x.Split(": ")
    $MDP = $xx[8]
    clear
    http://localhost
    Write-Host "####################"
    Write-Host "# Wotre MDP est    #"
    Write-Host "####################"
    Write-Host "User : admin"
    Write-Host "MDP  : $MDP"

    # Mon MDP actuelle est : Q8xYsF0ArWeZWGml

    Sleep-Host 300
}





$UserUPN = "scott@patchmypc.com"
$ManagerUPN = "brian.hall@patchmypc.com"

$ManagerObj = Get-AzureADUser -ObjectId $ManagerUPN

Set-AzureADUserManager -ObjectId $UserUPN -RefObjectId $ManagerObj.ObjectId


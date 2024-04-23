# Lista de IDs de volumes EBS (substitua com seus próprios IDs)
volume_ids=(
    "vol-*************"   
)

# Iterate all volumes and change type
for volume_id in ${volume_ids[@]};do
    aws ec2 modify-volume --region eu-west-1 --volume-type=standard --volume-id "${volume_id}"
    if [ $? -eq 0 ];then
        echo "OK: volume ${volume_id} changed to state 'modifying'"
    else
        echo "ERROR: couldn't change volume ${volume_id} type!"
    fi
done
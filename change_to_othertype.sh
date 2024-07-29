# Descrever volumes para obter IDs e tipos
describe_volumes_output=$(aws ec2 describe-volumes --region eu-west-1 --query 'Volumes[*].{ID:VolumeId, Type:VolumeType}')
volume_ids=($(echo $describe_volumes_output | jq -r '.[].ID'))
volume_types=($(echo $describe_volumes_output | jq -r '.[].Type'))

# Listar tipos dos volumes
for i in "${!volume_ids[@]}"; do
    echo "Volume ID: ${volume_ids[$i]}, Type: ${volume_types[$i]}"
done

# Iterate all volumes and change type if not gp3
for i in "${!volume_ids[@]}"; do
    volume_id=${volume_ids[$i]}
    volume_type=${volume_types[$i]}
    echo "${volume_id} e ${volume_type}" 

    if [ "$volume_type" != "gp3" ]; then
        #aws ec2 modify-volume --region eu-west-1 --volume-type gp3 --volume-id "${volume_id}"
        if [ $? -eq 0 ]; then
            #echo "OK: volume ${volume_id} is being modified to 'gp3'"
            echo
        else
            echo "ERROR: couldn't change volume ${volume_id} type!"
        fi
    else
        echo "INFO: volume ${volume_id} is already of type 'gp3', skipping modification."
    fi
done

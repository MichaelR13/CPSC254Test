#!/bin/bash

check_main=$(sha1sum main.py)
main_file=$"c7967df59976ac01af179055dd712f0aed85529c  main.py"

check_requirement=$(sha1sum requirements.txt)
requirements_file=$"848a4d865d60604b43f6233d583284a5b927c905  requirements.txt"

check_sound=$(sha1sum assets/audio/esm_8_bit_game_over_1_arcade_80s_simple_alert_notification_game.mp3)
sound_file=$"c64851cb1cbb07e3c0a88da1e8cc58396e7e36a5  assets/audio/esm_8_bit_game_over_1_arcade_80s_simple_alert_notification_game.mp3"

check_bear0=$(sha1sum assets/bear/Bear0.png)
bear0_file=$"2675a19f12f6b647e58f02f74a092e147cfe4218  assets/bear/Bear0.png"

check_authentication () {
    if [ "$1" == "$2" ]; then 
        echo "authenticated"
    else 
        echo "failed authentication"
    fi 
}

echo Check main.py ...;
check_authentication "$check_main" "$main_file";
echo ;

echo Check requirements.txt ...; 
check_authentication "$check_requirement" "$requirements_file"
echo ;

echo Check esm_8_bit_game_over_1_arcade_80s_simple_alert_notification_game.mp3 ...; 
check_authentication "$check_sound" "$sound_file"
echo ;

echo check assets ...;
check_authentication "$check_bear0" "$bear0_file"
echo ;
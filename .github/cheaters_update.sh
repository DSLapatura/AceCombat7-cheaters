#!/bin/bash 

time=$(date "+%Y-%m-%d %H:%M:%S")
echo $time

cheaters_ID=(76561199520283653 76561199096257101 "76561198406113787｜｜Rodrigo&#32;Oliveira" "76561199812329207｜Very&#32;bad｜xavacela" 76561198379251619｜｜guivalla 76561199165893750 76561198156733732｜｜YellowCrazyANt 76561199194351688 76561198898699339 76561198830427352 76561198311019610｜｜2096910154 76561199509409670 "76561199245272853｜Very&#32;bad｜" 76561198021172153｜｜Pharaoh 76561198799783195 76561198206916607 76561198162143609 76561198240455784 76561199036761417 76561198335186846 "76561199793561583｜Very&#32;bad｜Ihr_Schatten_1018" 76561198961251476 76561199672316305｜｜♥Oriana♥ 76561199079126751 76561198113027625 76561199447102360 76561199165329754 76561198206731741 76561198989140840｜｜YppahnU 76561198448282067 76561199261241054 76561199404905416 76561198314550983 76561198861931833｜｜siz.sawaf 76561198010879459 76561198798948279｜｜誌譐好侽人 76561198143645427 76561199757824462 76561199564901138｜｜やふゆる_Vtuber 76561199758677819 76561198075692143 76561199575141589 76561198869410066｜｜Lacia 76561199154791762 76561198963991931｜｜必勝空戰 76561199590949305 76561199025138813 76561198443659202 76561198869878353｜｜な 76561198818703363｜｜3D 76561199549196217 76561198133305602 76561198850362167｜｜Bravo 76561199243693978 76561199475570948 "76561198897831595｜｜Blahaj&#32;supremacy" 76561198446971768｜｜SSSchwarz "76561199304050583｜Very&#32;bad｜" 76561198816925680 76561199092155231｜｜吉他 76561199444803497 76561198003231591｜｜shenghua3949 76561198299775669 76561199361973029 76561199543154000 76561199549314093 76561198389918662 "76561198279192884｜｜碧涵" 76561198330062913 76561199559791137 76561198055477808 76561199122312731 76561198876580116 76561198359448207 76561199214790001｜｜ViperZER0 76561198349602018｜｜K0T3TSU "76561198074076241｜｜Colonel&#32;Cipher" 76561198144072073｜｜zhuonghui0001 76561198893141948 76561198018473837 76561198008523364｜｜ShadowGamer101st 76561198980204295 76561198117229678 76561199581609988 76561199496733098｜｜ND-HE 76561199501593849 "76561199154859343｜｜KRSW&#32;Lord" 76561198358276789 76561198444660192 76561198367447457 76561199027978364 76561199530166685 76561198180593561 76561199216725193｜｜Skyfire 76561199135446407 76561199117280140 76561198443132230 76561198829863126｜｜Skyle@der 76561198345323408 76561198151947614 76561198961226717 "76561198994345306｜｜Mister&#32;Tartaria" 76561198256021122 76561198103844413 76561199221096519 76561199229848829 76561198139082588 76561199097646181 76561198881741459 76561199223936931 76561198930833258 76561199373637935 76561199002216348｜｜蜡笔小蟹 76561198426925179 76561198101323037 76561199229760980 76561199004004915 76561198043036941 76561199497116434 76561198220391076 76561198943227563 "76561199489780880｜Very&#32;bad｜Mike&#32;Hunt" "76561199247196637｜｜奥西亚无人机" 76561198107387037 76561198955687025 76561198145619796 76561199140082027 76561199401367551 76561198859884192 76561198038827316 76561199474926894｜｜风卷尘生 76561198398157745 76561199227155475 76561198301029341｜｜田中脊髄剣 76561198817889927 76561198328779734 76561198953392478 76561199150963881 76561198304384143 76561198150304103 76561199158658113 76561198294378412 76561198982424786 76561199535817299 76561198177980518 76561198917360011 76561199465912684 76561198429941928 76561198076214633 76561199168111744 76561198301721995 76561199507205763 76561199363114608 76561198396903167 76561198319585202 76561198046742690 76561199433034628 76561198036859894 76561199216430196 76561198127073615 76561198854660782 76561199378969003 76561198012246719 76561199438934867 76561198281111612 76561198223744704｜｜軒尼詩_WJ 76561198892725495 76561199071839304 76561199390199106 76561199310017870 76561198077024574｜｜armoredgarmr "76561199412285976｜Very&#32;bad｜" 76561198990544647 76561198092502120 76561198043433411 76561198030697690 76561198938976695 76561198083979694 76561198081430238 76561199048027117 76561198107896591 76561198839646162 76561198073103373 76561198209173436 76561198973679329 76561198026289985 76561199070000800 76561199086244180 76561198084874424 76561198108197134 76561198407886594 76561198101337488 76561198851216499 76561198078057512 76561198076137075 76561199032447430 76561199028490431 76561198445457868 76561198368034387 76561199116012716 76561198176636826 76561199201981441 76561198080498773 76561199214277508 76561198161141089 76561198035733380 76561198027532793)
cheaters_Aliases=()
cheaters_Comment=()
cheaters_Name=()

i=0
for cheater in ${cheaters_ID[*]}
do
	if [ ${#cheater} -gt 17 ]
	then
		Name=`curl -L https://steamcommunity.com/profiles/${cheater:0:17} |grep 'class="actual_persona_name"' |head -1 |awk -F'>|<' '{print $3}'`
		len=`expr index "${cheater:18}" ｜`
		cheaters_Comment[$i]=${cheater:18:len-1}
		Alias=${cheater:len+18}
		cheaters_Aliases[$i]=${Alias/|/&#124;}
		cheaters_Name[$i]=${Name/|/&#124;}

	else
		Name=`curl -L https://steamcommunity.com/profiles/$cheater |grep 'class="actual_persona_name"' |head -1 |awk -F'>|<' '{print $3}'`
		cheaters_Aliases[$i]=''
		cheaters_Comment[$i]=''
		cheaters_Name[$i]=${Name/|/&#124;}
	fi

	let 'i++'
done
echo ${cheaters_Name[*]}

echo '# AceCombat7 cheaters


| Name | Steam URL ID | Ailases | Note |
| ------ | ------ | ------ | ------ |' > README.md

j=0
while (($j<i))
do
	echo '| '${cheaters_Name[$j]}' | ['${cheaters_ID[$j]:0:17}'](https://steamcommunity.com/profiles/'${cheaters_ID[$j]:0:17}') | '${cheaters_Aliases[$j]}' | '${cheaters_Comment[$j]}' |' >> README.md
	let 'j++'
done


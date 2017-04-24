local function run(msg, matches)
BOT = 316813335 -- your bot id
-- write with @sudo_hacker
if matches[1] == 'leave' and is_sudo(msg) then
		redis:set('leave'..msg.chat_id_,'yes')
		text = '\n<b>/yes\n\n/no</b>'
		tg.sendMessage(msg.chat_id, 0, 0, text, 0, 'html')
		elseif matches[1] == 'yes' and redis:get('leave'..msg.chat_id)== 'yes' then
tg.changeChatMemberStatus(msg.chat_id,316813335, 'Left')
	redis:set('leave'..msg.chat_id_,'no')
elseif matches[1] == 'no' and redis:get('leave'..msg.chat_id)== 'no' then
	redis:set('leave'..msg.chat_id_,'no')
text = 'End'
tg.sendMessage(msg.chat_id, 0, 0, text, 0, 'html')
end
end
return{
patterns = {
"^[!#/](leave)$",
"^[!#/](yes)$",
"^[!#/](no)$"
},
run = run
}



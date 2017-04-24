local function run(msg, matches)
tg.sendMessage(msg.chat_id, 0, 0,  "<b>online</b>", 0)
end
return {
  patterns = {
	"^[!#/](mafia)$",
   "^[!#/](babak)$"
  },
  run = run
}

--@sudo_hacker
--https://github.com/babakkhan375

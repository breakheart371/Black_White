local function run(msg, matches)
  if msg.content_.text_ == '/id' or '!id' or '#id' then
    function get_pic(arg, data)
      if data.first_name_ then

      tg.sendMessage(arg.chat_id, 0, 1, 'https://telegram.me/'..data.username_.. '\n <b>ID</b> : ' ..msg.from_id , 0, 'html')

      end
    end
  tdcli_function ({
    ID = "GetUser",
    user_id_ = msg.sender_user_id_,
    }, get_pic, {chat_id=msg.chat_id_,user_id=msg.sender_user_id_})

  end
end

return {
patterns = {
"^[/!#](id)$",
"^[/!#](ایدی)$"

},
run = run
}

--@sudo_hacker

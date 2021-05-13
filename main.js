const sendbtn = document.querySelector('#sendbtn');
sendbtn.addEventListener('click', ()=>{
	let message = document.querySelector('#message').value;
	if(message.match(/^(?!\s*$).+/g)){
		message = message.trim();
		let message_block = `<li class="message right appeared">
				               <div class="avatar"></div>
				               <div class="text_wrapper">
				                  <div class="text">${message}</div>
				               </div>
				            </li>`;
		let message_box = document.querySelector('.messages');
		message_box.insertAdjacentHTML('beforeend',message_block);

		message_box.scrollTop = message_box.scrollHeight;
		document.querySelector('#message').value = "";

		fetch(`save-chats.php?mess=${message}&type=user`).
		then((res) =>{
			return res.text();
		}).
		then((data) => {
			console.log(data);
		})

		//This is for chat bot
		let user_input = {
			message
		}

		fetch("chat-bot.php", {
                method: "post",
                body: JSON.stringify(user_input),
                header: {
                    'Content-Type': 'application/json'
                }
            }).then((response)=>{
                return response.text();
            }).then((data)=>{
                let bot_message_block = `<li class="message left appeared">
							               <div class="avatar"></div>
							               <div class="text_wrapper">
							                  <div class="text">${data}</div>
							               </div>
							            </li>`;
				message_box.insertAdjacentHTML('beforeend',bot_message_block);
				message_box.scrollTop = message_box.scrollHeight;

				fetch(`save-chats.php?mess=${data}&type=bot`).
				then((res) =>{
					return res.text();
				}).
				then((data) => {
					console.log(data);
				})
					})

	}else{
		alert(`Please Type Something Before send the message`);
	}
})
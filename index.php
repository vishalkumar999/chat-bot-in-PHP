<!DOCTYPE html>
<html>
   <head>
      <title>Chat Bot</title>
      <head>
         <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
         <link rel="stylesheet" type="text/css" href="style.css">
   </head>
   </head>
   <body style="background: #2d3436">
      <div class="chat_window">
         <div class="top_menu">
            <div class="buttons">
               <div class="button close">
               </div>
               <div class="button minimize">
               </div>
               <div class="button maximize"></div>
            </div>
            <div class="title">Chat Bot</div>
         </div>
         <ul class="messages">
            <?php
               $con = mysqli_connect('localhost','root','','vishal');
               $sql = "SELECT * FROM `messages`";
               $data = mysqli_query($con, $sql);
               
               if(mysqli_num_rows($data) > 0){
                  while($all_messages = mysqli_fetch_assoc($data)){
                     if($all_messages['type'] == 'user'){
                        echo "<li class='message right appeared'><div class='avatar'></div><div class='text_wrapper'>
                                    <div class='text'>{$all_messages['message']}</div></div></li>";
                     }else if($all_messages['type'] == 'bot'){
                        echo "<li class='message left appeared'><div class='avatar'></div><div class='text_wrapper'>
                                    <div class='text'>{$all_messages['message']}</div></div></li>";
                     }else{

                     }
                  }
               }
            ?>
         </ul>
         <div class="bottom_wrapper clearfix">
            <div class="message_input_wrapper">
               <input class="message_input" placeholder="Type your message here..." / id="message">
            </div>
            <div class="send_message" id="sendbtn">
               <div class="icon"></div>
               <div class="text">Send</div>
            </div>
         </div>
      </div>
      <div class="message_template">
         <li class="message">
            <div class="avatar"></div>
            <div class="text_wrapper">
               <div class="text">
               </div>
            </div>
         </li>
      </div>
      <script type="text/javascript" src="main.js"></script>
   </body>
</html>
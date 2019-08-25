Accessing specific value from JSON file                                                                 
                                                                                                        
github                                                                                                  
https://tinyurl.com/y4lt5vrg                                                                            
https://github.com/rogerjdeangelis/-utl-accessing-specific-value-from-JSON-file-                        
                                                                                                        
StackOverflow                                                                                           
https://tinyurl.com/y5bp943c                                                                            
https://stackoverflow.com/questions/57617518/error-accessing-specific-value-from-json-file              
                                                                                                        
I want to extract Roger fom the json file below, here is the nesting to get 'Roger                      
                                                                                                        
  jfile[["data"]["chats"]["messages"]["sender"]["id"]]                                                  
                                                                                                        
 Python is much faster than R for looping code.                                                         
                                                                                                        
*_                   _                                                                                  
(_)_ __  _ __  _   _| |_                                                                                
| | '_ \| '_ \| | | | __|                                                                               
| | | | | |_) | |_| | |_                                                                                
|_|_| |_| .__/ \__,_|\__|                                                                               
        |_|                                                                                             
;                                                                                                       
                                                                                                        
filename ft15f001 "d:/json/oneval.json";                                                                
parmcards4;                                                                                             
{                                                                                                       
    "application":"HelloWorld",                                                                         
    "data":{                                                                                            
       "chats":[                                                                                        
          {                                                                                             
             "name":"max",                                                                              
             "parties":[                                                                                
                {                                                                                       
                   "id":"Jeff"                                                                          
                },                                                                                      
                {                                                                                       
                   "id":"Mary"                                                                          
                }                                                                                       
             ],                                                                                         
             "messages":[                                                                               
                {                                                                                       
                   "sender":{                                                                           
                      "id":"Roger"                                                                      
                   },                                                                                   
                   "id":"1234",                                                                         
                   "content":[                                                                          
                      {                                                                                 
                         "data":"Hello number 2",                                                       
                         "type":"txt"                                                                   
                      }                                                                                 
                   ]                                                                                    
                }                                                                                       
              ]                                                                                         
}]}}                                                                                                    
;;;;                                                                                                    
run;quit;                                                                                               
                                                                                                        
*           _                                                                                           
 _ __ _   _| | ___                                                                                      
| '__| | | | |/ _ \                                                                                     
| |  | |_| | |  __/                                                                                     
|_|   \__,_|_|\___|                                                                                     
                                                                                                        
;                                                                                                       
{                                                                                                       
    "application":"HelloWorld",                                                                         
    "data":{                                                                                            
       "chats":[                                                                                        
          {                                                                                             
             "name":"max",                                                                              
             "parties":[                                                                                
                {                                                                                       
                   "id":"Jeff"                                                                          
                },                                                                                      
                {                                                                                       
                   "id":"Mary"                                                                          
                }                                                                                       
             ],                                                                                         
             "messages":[                                                                               
                {                                                                                       
                   "sender":{                                                                           
                      "id":"Roger"    ==============> extract Roger                                     
                   },                 jfile[["data"]["chats"]["messages"]["sender"]["id"]               
                   "id":"1234",                                                                         
                   "content":[                                                                          
                      {                                                                                 
                         "data":"Hello number 2",                                                       
                         "type":"txt"                                                                   
                      }                                                                                 
                   ]                                                                                    
                }                                                                                       
              ]                                                                                         
}]}}                                                                                                    
                                                                                                        
*            _               _                                                                          
  ___  _   _| |_ _ __  _   _| |_                                                                        
 / _ \| | | | __| '_ \| | | | __|                                                                       
| (_) | |_| | |_| |_) | |_| | |_                                                                        
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                       
                |_|                                                                                     
;                                                                                                       
                                                                                                        
%put 'jfile[["data"]["chats"]["messages"]["sender"]["id"]]'  &=frompy;                                  
                                                                                                        
'jfile[["data"]["chats"]["messages"]["sender"]["id"]]'  FROMPY=Roger                                    
                                                                                                        
*                                                                                                       
 _ __  _ __ ___   ___ ___  ___ ___                                                                      
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                     
| |_) | | | (_) | (_|  __/\__ \__ \                                                                     
| .__/|_|  \___/ \___\___||___/___/                                                                     
|_|                                                                                                     
;                                                                                                       
                                                                                                        
%utl_submit_py64("                                                                                      
import json;                                                                                            
import pyperclip;                                                                                       
with open('d:/json/oneval.json') as json_data:;                                                         
.    jfile = json.load(json_data);                                                                      
.    json_data.close();                                                                                 
for chat in jfile['data']['chats']:;                                                                    
.   for msg in chat['messages']:;                                                                       
.       item = msg['sender']['id'];                                                                     
.       print(item);                                                                                    
pyperclip.copy(item);                                                                                   
",return=frompy);                                                                                       
                                                                                                        
%put 'jfile[["data"]["chats"]["messages"]["sender"]["id"]]'  &=frompy;                                  
                                                                                                        
                                                                                                        

I know this should have been super easy to integrate into the project, but I burned 3-4 hours and just couldn't figure it out. Here are some things I tried to save you time on your pursuit:

1. Hard Coded in 8.8.8.8 (Google Public DNS)
2. Seems like the UDP appcall() wasn't firing, or wasn't firing enough (this took a bit of digging)
3. uIP would queue up the resolve request in the webclient code but seems like the resolve would drop the ball and never execute the query
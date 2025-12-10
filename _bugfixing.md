# 🚧 To-Dos for Dev Team
- sent na the initial medjo finished system  
  - https://github.com/hakdog456/WEBPROG-CASE-STUDY-MIDTERM/blob/main/WEBPROG-CASE-STUDY-MIDTERM-main-dine.zip  
  - https://www.youtube.com/watch?v=-1DTYAQ25bY&list=PLZPZq0r_RZOO6bGTY9jbLOyF_x6tgwcuB&index=27
- test it and find concerning bugs, list it here
- study the system well para ma present tomorrow and ma highlight ung features

---

# 🛠 List of Fixes
- when not logged in, when user profile is clicked it should go to login (it goes to user dashboard kase eh even if no ones logged in, it shows "username") - FIXED!
- in user, after submitting application, i suggest for the view to revert to dashboard (it still goes back to user application kase eh) - FIXED!
- from the user, when meet and greet is clicked, it should go to meet and greet (it still goes back to user application kase eh)
- contact.html: nothing happens when send message is clicked : tiny gap below footer on 768px - 1024px -- minnardfix
- faqs.html: big gap below footer after 768px, disappears when you expand one of the details, footer background disappearing when <600px - 768px -- minnardfix


---

# 🐞 List of Bugs

- I think ignore na mga footer problem if meron man, di man ganun ka noticeable may just be with my pc (ata) - mennard
- https://youtu.be/0U6URtgitLGYkM <- video link of the following errors (tried to go one by one)

---

WORKING ON ALL TINY GAP BELOW FOOTERS - MENNARD
login.php & sign-up.php 
- tiny gap below footer on 1024px 
- https://youtu.be/0U6URtLGYkM?t=54

index.php
- tiny gap below footer on 768px - 1024px 
- https://youtu.be/0U6URtLGYkM?t=110

aboutUs.html 
- tiny gap below footer on 768px - 1024px 
- https://youtu.be/0U6URtLGYkM?t=131

ourAnimals.html 
- https://youtu.be/0U6URtLGYkM?t=158
- tiny gaps below footer on 768px - 1024px 
- filter button not functional? (remove nalang if wala) 
- all pets are duplicated in this page 
- go back to this after doing all the stuff below (at the end it will add so many placeholder animals)
-- https://youtu.be/0U6URtLGYkM?t=669 

from petdetails.html to user-application-page.html 
- https://youtu.be/0U6URtLGYkM?t=204
- https://youtu.be/0U6URtLGYkM?t=227
- if I try to click "Know More" on an animal and click Apply Now BEFORE signing in, it will make me go to this page with the content bugging out 

petdetails.html
- https://youtu.be/0U6URtLGYkM?t=256
- same problem with the gap after footer
- nothing happens when clicking Read FAQs 
- when not logged in, in pet details, when "apply" btn is clicked, it should go to login page - dustins

user-application-page.html
- https://youtu.be/0U6URtLGYkM?t=219
- LOGGED IN AGAIN THEN TRIED THE FF
-- https://youtu.be/0U6URtLGYkM?t=311 
- improper sizing of the form (q/a?) at <600px - 1024px 
--  https://youtu.be/0U6URtLGYkM?t=335
- Application allows to send even if the details are not fully filled up 
-- https://youtu.be/0U6URtLGYkM?t=374

user-profile.html (admin controls)
- NO EXIT BUTTON WHEN TRYING TO ADD A DOG, SO ITS STUCK THERE (I think this is the one causing the placeholder dogs adding loop)
- When clicking the add button to an empty add dog function, it automatically says pending even though no user added it?
-- https://youtu.be/0U6URtLGYkM?t=411 (both above)

user-application-page.html : admin 3 
- When setting a meet and greet time for admins, it says use 24 hour format below yet nakalagay automatically nag 01:00 PM when I put 13:00
-- https://youtu.be/0U6URtLGYkM?t=485

user-application-page.html : admin 4 or 5
- Wont allow the user to pay
- Allows the admin to approve still 


user-application-page.html : admin any
- Clicking the user icon on the top right from this page takes me to DataOverview.html with admin priv, with no way of going back to normal user view.
- I had to relogin to fix the mentioned above
-- https://youtu.be/0U6URtLGYkM?t=591


user-profile.html
- footer not on the bottom 
-- https://youtu.be/0U6URtLGYkM?t=663
- when no pets are added to a user, it shows no pets found but still shows the tile cards behind it, making a large gap below the footer
-- https://youtu.be/0U6URtLGYkM?t=206
- fixed the large gap by clicking on one of the filters, but still leaves a huge gap below the footer 
- adding a dog to the likes works but its tilecard is fucked up, double boxes behind it but not really noticeable unless you look closely 
- search tab not centered in 930px+ width 
-- https://youtu.be/0U6URtLGYkM?t=774
- When clicking filters in the filter bar that does not show any pets, the footer goes up.
-- https://youtu.be/0U6URtLGYkM?t=777

admin-ready-for-adoption.html
- can approve even if no payment?

dataoverview.html 
- even if application rejected, payment still shows pending in dataoverview. Can't edit or undo decisions?
-- https://youtu.be/0U6URtLGYkM?t=593
- I see so many placeholder pets after a while in the pets (from 15 normal pets, to 36 due to the added 21 placeholder pets)
-- https://youtu.be/0U6URtLGYkM?t=610


---

General
- clicking search button in header does nothing
- button of user profile functionality to other pages
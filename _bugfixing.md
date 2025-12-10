# 🚧 To-Dos for Dev Team
- sent na the initial medjo finished system  
  - https://github.com/hakdog456/WEBPROG-CASE-STUDY-MIDTERM/blob/main/WEBPROG-CASE-STUDY-MIDTERM-main-dine.zip  
  - https://www.youtube.com/watch?v=-1DTYAQ25bY&list=PLZPZq0r_RZOO6bGTY9jbLOyF_x6tgwcuB&index=27
- test it and find concerning bugs, list it here
- study the system well para ma present tomorrow and ma highlight ung features

---

# 🛠 List of Fixes
- when not logged in, when user profile is clicked it should go to login (it goes to user dashboard kase eh even if no ones logged in, it shows "username")
- in user, after submitting application, i suggest for the view to revert to dashboard (it still goes back to user application kase eh)
- from the user, when meet and greet is clicked, it should go to meet and greet (it still goes back to user application kase eh)

---

# 🐞 List of Bugs

- I think ignore na mga footer problem if meron man, di man ganun ka noticeable may just be with my pc (ata) - mennard

---

login.php 
- tiny gap below footer on 1024px 

index.php
- tiny gap below footer on 768px - 1024px 

aboutUs.html 
- tiny gap below footer on 768px - 1024px 

ourAnimals.html 
- tiny gaps below footer on 768px - 1024px 
- filter button not functional? (remove nalang if wala) 
- I don't know if intentional but all pets are duplicated in this page 
- (this is after updating the pet to pending), it added 3 Placeholder Pet (maybe because of the add button on admin in userprofile), but I can't delete it in userProfile

from petdetails.html to user-application-page.html 
- if I try to click "Know More" on an animal and click Apply Now before signing in it will make me go to this page with the content bugging out 

petdetails.html
- nothing happens when clicking Read FAQs 
- when not logged in, in pet details, when "apply" btn is clicked, it should go to login page

user-application-page.html
- improper sizing of the form (q/a?) at <600px - 1024px 
- Application allows to send even if the details are not fully filled up 
- Properly updated the userprofile.html after submitting a form 
- I have no idea how to set a date in our site via admin 
- NO EXIT BUTTON WHEN TRYING TO ADD A DOG, SO ITS STUCK THERE 
- When clicking the add button to an empty add dog function, it automatically says pending even though no user added it?
- When clicking Meet and Greet, Ready for Adoption, and Adopted in the filter bar above, it pushes the footer and leaves a huge gap below it. 
- When setting a meet and greet time for admins, it says use 24 hour format yet nakalagay automatically nag 01:00 PM when I put 13:00
- Clicking the user icon on the top right from this page takes me to DataOverview.html with admin priv, with no way of going back to normal user view. Clicking OurAnimals.html from here shows all Pets as Placeholder Pets.
- I had to relogin to fix the mentioned above
- I think its more of a bug wherein it adds Placeholder pets for some reason, I scrolled down and saw the original pets 

contact.html
- nothing happens when I click send message? 
- tiny gap below footer on 768px - 1024px 

faqs.html
- big gap below footer after 768px, disappears when you expand one of the faqs 
- footer background disappearing when <600px - 768px

user-profile.html
- footer not on the bottom 
- when no pets are added to a user, it shows no pets found but still shows the tile cards behind it, making a large gap below the footer
- fixed the large gap by clicking on one of the filters, but still leaves a huge gap below the footer 
- adding a dog to the likes works but its tilecard is fucked up, double boxes but not really noticeable unless you look closely 
- search tab not centered in 930px+ width 

admin-ready-for-adoption.html
- can approve even if no payment?

dataoverview.html 
- even if application rejected, payment still shows pending in dataoverview. Can't edit or undo decisions?
- I see so many placeholder pets after a while in the pets (from 15 normal pets, to 36 due to the added 21 placeholder pets)

general
- clicking search button does nothing in header

---

General
- clicking search button in header does nothing
- button of user profile functionality to other pages
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
- tiny gap below footer on 768px–1024px

aboutUs.html
- tiny gap below footer on 768px–1024px

ourAnimals.html
- tiny gaps below footer on 768px–1024px  
- filter button not functional? (remove nalang if wala)  
- I don't know if intentional but all pets are duplicated in this page  
- after updating the pet to pending, it added 3 Placeholder Pet (maybe because of the add button on admin in userprofile)  
- cannot delete Placeholder Pets in userProfile

petdetails.html → user-application-page.html
- if I click "Know More" and then Apply Now before signing in, the page loads incorrectly and content bugs out

petdetails.html
- nothing happens when clicking Read FAQs
- when not logged in, in pet details, when "apply" btn is clicked, it should go to login page

user-application-page.html
- improper sizing of the form (Q/A?) at <600px – 1024px  
- application allows sending even if some details are not filled  
- properly updated the userprofile.html after submitting a form  
- no idea how to set a date on the site via admin  
- NO EXIT BUTTON when trying to add a dog → stuck there  
- clicking the add button in an empty "add dog" makes it say pending even without user input  
- clicking Meet & Greet, Ready for Adoption, Adopted pushes the footer down, leaving huge gap  
- when setting meet & greet time for admins, instructions say 24-hour format but 13:00 becomes 01:00 PM  
- clicking the user icon redirects to DataOverview.html with admin privs  
- no way to return to normal user view  
- OurAnimals.html from there shows all pets as Placeholder Pets  
- relogin needed to fix  
- system seems to auto-add Placeholder Pets; saw originals after scrolling

contact.html
- nothing happens when clicking Send Message  
- tiny footer gap at 768px–1024px

faqs.html
- big gap below footer after 768px; disappears when expanding a FAQ  
- footer background disappears at <600px–768px

user-profile.html
- footer not at bottom  
- when no pets are added:
  - shows "no pets found" but tile cards still appear behind  
  - large gap below footer  
- gap only fixed when clicking one of the filters  
- adding a dog to likes works but tile card becomes double-boxed (not obvious unless you check)  
- search bar not centered at widths 930px+

admin-ready-for-adoption.html
- can approve even if no payment submitted

dataoverview.html
- even if application is rejected, payment still shows "Pending"  
- can't edit or undo decisions  
- placeholder pets keep increasing (from 15 pets → 36 due to 21 added)

---

General
- clicking search button in header does nothing
- button of user profile functionality to other pages
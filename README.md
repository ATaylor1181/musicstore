**Music Store**
===========
[Website](https://safe-lake-72049.herokuapp.com/)

[GitHub Repo](https://github.com/ATaylor1181/musicstore)

A two-sided marketplace, speciallising in the buying and selling of musical instruments, and musical assessories.  
Allows users to sign up and start either selling their own musical products, or buy musical products from other sellers.

## **Features**  
---
Users will be able to Buy and Sell Musical related items from our two-sided marketplace once they sign up.

![Sign Up Pic]()

![Sell Item Pic]()

Users will also be able to browse through our Marketplace to see all we have on offer.

![Browsing Picture]()

![Search Bar]()

Make a Purchase through Stripe.

![Payment]()

With a Confirmation Email.

![Comfirmation Email]()



## **Getting Started**  
---
### **Installing**
Once you have Cloned or Downloaded the Repository, with terminal, head into the right folder and run these commands:

Installing the require gems:
```
$ bundle install
```

Creating the database:
```
$ rake db:create
```

Migrating the Database:
```
$ rake db:migrate
```

Then finally, seed in the pre-requisite data from the seed.rb file:
```
$ rake db:seed
```

### **Note**  
You will need to create your own .env file in the root of the folder; containing your own API keys, for this to work.

Current API Keys you will need to accquire and named in this foramt in your .env file:  
_Stripe:_  
```
PUBLISHABLE_KEY=  
SECRET_KEY=
```

_Google's reCaptcha:_  
```
RECAPTCHA_PUBLIC_KEY=  
RECAPTCHA_PRIVATE_KEY=
```

_MailGun:_  
```
MAILER_ADDRESS=  
MAILER_DOMAIN=  
MAILER_USER_NAME=  
MAILER_PASSWORD=
```

**The current location of the _Amazon AWS S3 Bucket_ is in _Sydney, Australia_.  
If you want to make your own S3 bucket, you will need to sign up for [Amazon's AWS Service](https://aws.amazon.com/) and you will need to edit the _storage.yml_ file with your own details.**

## **Design Process**  
---
**Figma**
![Figma Wireframe]()

## **Planning**  
---
**ERD Diagram**
![ERD]()

**Trello Board**
![Trello]()

## **Built With**
---
[Rails](https://rubyonrails.org/) - Built with the Rails Framework  
[Amazon's AWS service](https://aws.amazon.com/) - Used to Store Image Uploads  
[Heroku](https://www.heroku.com/) - Used to Host Website  
[Stripe](https://stripe.com/) - Used to Implement a Payment System


## **Authors**  
---
Ross Savill - [GitHub](https://github.com/Ross-Savill)

Alex Tayler - [GitHub](https://github.com/ATaylor1181)

Yong Liang - [GitHub](https://github.com/YongBong946)

## **Short Answer Questions**  
---
**1. What is the need (i.e. challenge) that you will be addressing in your project?**  
Our challenge for this project is to create a two-sided marketplace, which will allow users to be able to both buy and sell items.

**2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**  
Currently there isn't a two-sided marketplace which sells musical instruments and musical accessories, so we are trying to accommodate for those who want a hub to purely buy and sell new or used musical instruments and accessories.

**3. Describe the project you will be conducting and how your App will address the needs.**  
In our project we will be creating a two-sided marketplace that sells musical instruments and accessories. This marketplace will allow users to sign up and then start listing musical items to sell to other users who are intrested in buying them.

**4.Describe the network infrastructure the App may be based on.**  
For now the closest network infrastructure would be either Ebay or Gumtree.

**5. Identify and describe the software to be used in your App.**  


**6. Identify the database to be used in your App and provide a justification for your choice.**  
![ERD Diagram]()  


**7. Identify and describe the production database setup (i.e. postgres instance).**  


**8. Describe the architecture of your App.**  


**9. Explain the different high-level components (abstractions) in your App.**  


**10. Detail any third party services that your App will use.**  
Our app will use these:  
[Devise](https://github.com/plataformatec/devise) - Used to generate secrutiy in our app with resticting users to buy and sell items unless they Login/Signup.  
[Stripe](https://stripe.com/au) - Used to accept User Payments for when they buy products from our app.  
[GeoCoder](https://github.com/alexreisner/geocoder) - Used locaion based service (Google Maps) in our app to determine and show location based data.

**11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**  
Our marketplace will be the most similar to Gumtree and Ebay. Users will be able to list their items that they would want to sell, with a Title, Description, Image and a Price.

**12. Discuss the database relations to be implemented.**  


**13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.**  


**14. Provide your database schema design.**  


**15. Provide User stories for your App.**  
As a User, I want to be able to see all the products that are being sold without signing up, so that I can make a decision whether or not I want to sign up and use the marketplace.
As a User, I want to be able to list products that I want to sell, so that I can make other users aware of what I am trying to sell, and hopefully get someone else to buy my product.
As a User, I want to be able to buy a product, so that I can get it.
As a User, I want to use a secure way to buy products from the marketplace, so that I won't have to worry about someone stealing my personal information.

**16. Provide Wireframes for your App.**  


**17. Describe the way tasks are allocated and tracked in your project.**  
We created a Trello board that has all the things we want to achieve and all the extra optional stuff we want to add to our app if we have the time. We each allocate a task to ourselves and update the Trello cards with our names on it, and move it to the "Doing" column, that way we know what each of our members are up to, and that way we won't be doubling up on the same task.

**18. Discuss how Agile methodology is being implemented in your project.**  


**19. Provide an overview and description of your Source control process.**  


**20. Provide an overview and description of your Testing process.**  


**21. Discuss and analyse requirements related to information system security.**  


**22. Discuss methods you will use to protect information and data.**  
We used Devise to allow users to be able to list and buy products from our app. If they dont sign in, they can only browse at our store, but will be unable to sell or buy products. Devise will be able to handle the security of passwords. We also use Stripe for our purchases, and stripe will handle all sensitive information users provide when purchasing an item.

**23. Research what your legal obligations are in relation to handling user data.**  


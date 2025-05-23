<img src="https://user-images.githubusercontent.com/74038190/212284100-561aa473-3905-4a80-b561-0d28506553ee.gif">
<img src="Frontend/public/img/amazonawylogo.png">
<img src="https://user-images.githubusercontent.com/74038190/212284100-561aa473-3905-4a80-b561-0d28506553ee.gif">

<hr>
<h2 style="text-decoration:underline">Content</h2>
<p>
    <ul>
        <li><a href="#Intro">Introduction</a> 
        <li><a href="#target_bene">Target    Beneficiaries of the Project</a>
        <li> <a href="#adopted_pro">Adopted Programming Language</a>
        <li> <a href="#system_Arch">System Architecture</a>
        <li> <a href="#dis_database">Distributed Database Design</a>
        <li> <a href="#time_plan">Time Plan</a>
        <li> <a href="#endUser">End-User Guide</a>
        <li> <a href="#ResourcesNeeded">Resources Needed</a>
        <li> <a href="#RoleofEachMember">Role of Each Member</a>
    </ul>    
</p>

<hr>
<h2 style="text-decoration:underline" id="Intro">Introduction</h2>
<p>
    <p>Amazonawy is an online tech marketplace where users can purchase and sell a variety of tech products. It offers various online payment options for transactions. The platform's backend is constructed using the Node.js framework.</p>

<p>The System also offers a lot of features:</p>

<ul>
    <li>Create a new account.</li>
    <li>Login to your account.</li>
    <li>It supports different types of users.</li>
    <li>Add/Edit/remove data that is shared between the users.</li>
    <li>Online payment where the user chooses between different payment options, through credit card or e-wallet.</li>
    <li>Multi search options.</li>
    <li>View your account info such as current cash balance, List of purchased items, list of sold items and items to be sold yet.</li>
    <li>Manage inventory of the items.</li>
    <li>Generate different kinds of reports such as reports about the transactions performed on the systems.</li>
    <li>It uses REST APIs to allow frontend to communicate with backend.</li>
    <li>Each user is served on a different thread.</li>
</ul>

<p>Amazonawy is an ecommerce app where tech fans and sellers can meet. Enjoy shopping with modern features. Welcome to Amazonawy, where tech meets convenience!</p>

</p>

<hr>
<h2 style="text-decoration:underline" id="target_bene">Target Beneficiaries of the Project</h2>

<p>
   <ol>
    <li>
        <strong>Customers:</strong>
        <ul>
            <li>Customers can benefit from a wide range of products available for purchase, convenient shopping experience, secure payment options, and efficient delivery services.</li>
            <li>They can explore various products, compare prices, read reviews, and make informed purchasing decisions from the comfort of their homes.</li>
            <li>Access to a user-friendly interface with features such as personalized recommendations, wish lists, and order tracking enhances the overall shopping experience.</li>
        </ul>
    </li>
    <li>
        <strong>Sellers:</strong>
        <ul>
            <li>Sellers can leverage the platform to reach a broader audience and expand their customer base.</li>
            <li>They can create storefronts, list their products, manage inventory, and track sales performance.</li>
            <li>Access to analytics and reporting tools enables sellers to gain insights into customer preferences and optimize their marketing strategies.</li>
        </ul>
    </li>
    <li>
        <strong>Delivery Services:</strong>
        <ul>
            <li>Delivery services can benefit from partnerships with the online store to fulfill orders and provide timely and reliable delivery to customers.</li>
            <li>Collaborating with the platform can lead to increased business opportunities and revenue streams for delivery service providers.</li>
        </ul>
    </li>
    <li>
        <strong>Advertisers:</strong>
        <ul>
            <li>Advertisers can utilize the platform's advertising services to promote their products and target specific customer segments.</li>
            <li>Access to a large user base and advanced targeting capabilities allows advertisers to maximize the impact of their marketing campaigns and drive sales.</li>
        </ul>
    </li>
    <li>
        <strong>Economy and Society:</strong>
        <ul>
            <li>The presence of a thriving online marketplace contributes to economic growth by fostering entrepreneurship, creating job opportunities, and driving innovation.</li>
            <li>Consumers benefit from increased competition, which often leads to lower prices and improved product quality.</li>
            <li>The convenience of online shopping helps save time and reduces the environmental footprint associated with traditional retail.</li>
        </ul>
    </li>
</ol>

</p>
<hr>

<h2 style="text-decoration:underline" id= "adopted_pro">Adopted Programming Language</h2>

<p>
    <img src="https://private-user-images.githubusercontent.com/74038190/238200426-29fd6286-4e7b-4d6c-818f-c4765d5e39a9.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQ0MDU2NzEsIm5iZiI6MTcxNDQwNTM3MSwicGF0aCI6Ii83NDAzODE5MC8yMzgyMDA0MjYtMjlmZDYyODYtNGU3Yi00ZDZjLTgxOGYtYzQ3NjVkNWUzOWE5LmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDE1NDI1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTk0MWRkYTQyY2NmMzJiNzRjYTk0MDQ2ZTZhODI4NzZhYzM3YjcwMGEzNjgwMDJmOGQ2NDBjYjM4YTUyNjEwMTImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.kiBAKGHFxbKhMZV5M9pQHfCjW2ycOsUsnoSq-L5ijiw" alt="HTML" width="150px" height="150px">
    <img src="https://private-user-images.githubusercontent.com/74038190/238200428-67f477ed-6624-42da-99f0-1a7b1a16eecb.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQ0MDU2NzEsIm5iZiI6MTcxNDQwNTM3MSwicGF0aCI6Ii83NDAzODE5MC8yMzgyMDA0MjgtNjdmNDc3ZWQtNjYyNC00MmRhLTk5ZjAtMWE3YjFhMTZlZWNiLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDE1NDI1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWVlMWRmYzA4MGU2ZTNmNmYyZTFjMTNhZTM2ODJjZjhlODk5Yjk5MjZjNWNjYjNlZTIxYjRmMjExZTM2MTUyMmImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.8ng0EHMIACiaLM6ezRdL5EI6yzI3F9PG-SeWg9cw06k" alt="JavaScript" width="150px" height="150px">
    <img src="https://user-images.githubusercontent.com/74038190/212257454-16e3712e-945a-4ca2-b238-408ad0bf87e6.gif" alt="JavaScript" width="150px" height="150px">
    <img src="https://user-images.githubusercontent.com/74038190/212257460-738ff738-247f-4445-a718-cdd0ca76e2db.gif" alt ="NodeJs" width="150px" height="150px">
    <img src="https://private-user-images.githubusercontent.com/74038190/238200441-1a797f46-efe4-41e6-9e75-5303e1bbcbfa.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQ0MDU2NzEsIm5iZiI6MTcxNDQwNTM3MSwicGF0aCI6Ii83NDAzODE5MC8yMzgyMDA0NDEtMWE3OTdmNDYtZWZlNC00MWU2LTllNzUtNTMwM2UxYmJjYmZhLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDE1NDI1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTAzMzQ0Zjg5N2VkOTM2YzVmYTE5NzFlNmRhZTZhMGEzOGE1OWRiMmJlMTA2MDllNWM0MzRhMThhOGE0ODk2ZjQmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.PRnIhb_XY2DmvOxf_14fLcxFvLCXqmYwUP6Ap4nkaeM" alt ="Express" width="150px" height="150px">
</p>
<hr>

<h2 style="text-decoration:underline" id = "system_Arch">System Architecture</h2>

<p>
    <p>We adopted a 3-Tiered Client/Server Model for its distinct advantages in scalability, modularity, and maintainability. In this architecture, the client tier handles user interaction and presentation, the server tier manages application logic and processing, while the database tier stores and retrieves data. This design ensures a clear separation of concerns, facilitating easier development, deployment, and future enhancements. </p>
    <img src="Frontend/public/img/system_Architecture.PNG">
</p>
<hr>

<hr>

<h2 style="text-decoration:underline" id="dis_database">Distributed Database Design</h2>

<p>
    <h3>EER design: <h3>
    <img src="Frontend/public/img/eer_design_db.png">
    <h3>Relational design: <h3>
    <img src="Frontend/public/img/relational_design_db.png">
</p>
<hr>

<h2 style="text-decoration:underline" id = "time_plan">Time Plan</h2>

<p>
    <table>
    <tr>
        <th>Task</th>
        <th>Duration</th>
        <th>Start Date</th>
        <th>End Date</th>
    </tr>
    <tr>
        <td>Requirement Analysis & Design Wireframes</td>
        <td>5 daye</td>
        <td>13/3/2024</td>
        <td>18/3/2024</td>
    </tr>
    <tr>
        <td>Frontend Development</td>
        <td>30 days</td>
        <td>16/3/2024</td>
        <td>15/4/2024</td>
    </tr>
    <tr>
        <td>Database Design & Setup</td>
        <td>30 days</td>
        <td>20/3/2024</td>
        <td>19/4/2024</td>
    </tr>
    <tr>
        <td>Backend Development</td>
        <td>14 days</td>
        <td>15/4/2024</td>
        <td>29/4/2024</td>
    </tr>
    <tr>
        <td>Deployment</td>
        <td>1 day</td>
        <td>3/5/2024</td>
        <td>3/5/2024</td>
    </tr>
    <tr>
        <td>Testing</td>
        <td>3 days</td>
        <td>4/5/2024</td>
        <td>6/5/2024</td>
    </tr>
    </table>
</p>
<hr>

<hr>

<h2 style="text-decoration:underline" id="endUser">End-User Guide</h2>

<p>
    <p>
        If you already have an account on the website, simply log in using your credentials. 
    </p>
    <img src="Frontend/public/img/user_guide/login.png">
    <ul>
       <li>If not, please click on the 'Sign Up' button to proceed to the registration page and create a new account.
       </li>
        <li>Please provide your first name, last name, desired account username, and a strong password. Once you've filled in the required information, click the 'Sign Up' button to complete the registration process.
        </li>
    </ul>
    <img src="Frontend/public/img/user_guide/sign_up.png">
    <h3 style="text-decoration:underline">After Login</h3>
    Welcome to the main page displaying the available products for purchase.
    <br>
    <br>
    <img src="Frontend/public/img/user_guide/product_image.png">
    <br>
    <br>
    If you're interested in purchasing any item, simply click on the 'Buy' button next to the product.
    <br>
    <br>
    <img src="Frontend/public/img/user_guide/buy_smart_tv.png">
    click Add to cart
    <br>
    <br>
    <img src="Frontend/public/img/user_guide/cart_button.png">
    <br>
    You'll notice that the cart button displays a notification indicating that the item has been added successfully.
    <br>
    Now, to proceed with the payment for your selected product, simply click on the cart button.
    <br>
    <img src="Frontend/public/img/user_guide/select_payment_type.png">
    <p>
        Next, select your preferred payment method: either by Visa or by using your balance on the website.
    </p>
    <p>
        If you choose Visa as your payment method, please provide the required information and then click the 'Pay' button to complete the transaction.
    </p>
    <img src="Frontend/public/img/user_guide/master_visa.png">
    <p>
        Congratulations! Your payment for the product has been successfully processed.
    </p>
    <hr>
    <p>
        On the sidebar, you'll find buttons for accessing your profile, returning to the home page, adding credit to your account, and logging out.
    </p>
    <img src="Frontend/public/img/user_guide/side_bar.png" height = "300px">
    <p>
        if you click the profile page you will find this page
    </p>
    <img src="Frontend/public/img/user_guide/profile.png">
    <p>
        you will find your balance and you can add products
    </p>
    <p>
        if you click credit button. you will find this page
    </p>
    <img src="Frontend/public/img/user_guide/charge_balance.png">
    <p>
        you can charge your balance from there by determind the amount of money.
    </p>
    <br>
    <br>
    <br>
    <p>
        if you have any problem. Call us :)
    </p>
</p>
<hr>

<h2 style="text-decoration:underline"id="ResourcesNeeded">Resources Needed</h2>

<p>
    <ol>
    <li>
        <strong>Hardware:</strong>
        <ul>
            <li>Servers: To host the website, manage databases, and handle customer transactions.</li>
            <li>Storage Devices: For storing product images, descriptions, and other data.</li>
            <li>Networking Equipment: Routers, switches, and firewalls to ensure reliable internet connectivity and security.</li>
        </ul>
    </li>
    <li>
        <strong>Software:</strong>
        <ul>
            <li>Development Tools: Integrated Development Environments (IDEs) such as Visual Studio Code or IntelliJ IDEA for coding and debugging.</li>
            <li>Version Control Systems: Git for managing code versions and collaboration.</li>
            <li>Operating Systems: Linux or Windows servers to host the website.</li>
            <li>Database Management Systems: MySQL, PostgreSQL, or MongoDB for storing product information and customer data.</li>
        </ul>
    </li>
    <li>
        <strong>Human Resources:</strong>
        <ul>
            <li>Developers: Front-end, back-end, and full-stack developers to build and maintain the website.</li>
            <li>Designers: UX/UI designers to create an intuitive and visually appealing user interface.</li>
            <li>Testers: Quality Assurance (QA) engineers to test the website for bugs and ensure its functionality.</li>
            <li>Project Managers: To oversee the project's progress, allocate resources, and coordinate tasks.</li>
        </ul>
    </li>
    <li>
        <strong>Financial Resources:</strong>
        <ul>
            <li>Budget: Funds for purchasing hardware, software licenses, and hiring personnel.</li>
            <li>Marketing Budget: For advertising the online store, promoting products, and attracting customers.</li>
        </ul>
    </li>
    <li>
        <strong>Time:</strong>
        <ul>
            <li>Adequate time allocation for planning, development, testing, deployment, and ongoing maintenance of the website.</li>
            <li>Timelines and deadlines for completing different stages of the project.</li>
        </ul>
    </li>
</ol>
</p>
<hr>

<h2 style="text-decoration:underline"id="RoleofEachMember">Role of Each Member</h2>

<p>
   <table>
    <tr>
        <th>Name</th>
        <th>Role</th>
    </tr>
    <tr>
        <td>Sarah Tarek Mohamed Bishry</td>
        <td>Market/Checkout/Login/Signup backend and frontend</td>
    </tr>
    <tr>
        <td>Sarah Sherif</td>
        <td>Profile/Market backend and frontend</td>
    </tr>
    <tr>
        <td>Mahmoud Abdelraouf Mahmoud Abdelaal</td>
        <td>Login/Signup/Market frontend and backend</td>
    </tr>
    <tr>
        <td>Eslam Mohamed</td>
        <td>UI/UX design, Deposit frontend and backend</td>
    </tr>
    <tr>
        <td>Karim Ibrahim</td>
        <td>- Assisted in the Database Design<br>- System Testing</td>
    </tr>
    <tr>
        <td>Adham El Menyawi</td>
        <td>Admin frontend/backend</td>
    </tr>
    <tr>
        <td>Mohamed Adham</td>
        <td> Worked on front-end development </td>
    </tr>
    <tr>
        <td>Omar Tahan</td>
        <td>Participated in Database Entity Relationship Diagram</td>
    </tr>
    <tr>
        <td>Abdelrahman Elsayed</td>
        <td>- has done a huge part of sql queries<br>- Mapped the Database Entity Relationship Diagram</td>
    </tr>
    <tr>
        <td>Yasa</td>
        <td>- Assisted in the Database Design<br>- Communcation between database team and front and backend team</td>
    </tr>
</table>
</p>
<hr>

<img src="https://user-images.githubusercontent.com/74038190/212284100-561aa473-3905-4a80-b561-0d28506553ee.gif">

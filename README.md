# Dera Banquet Hall - Quote & Booking Automation

A fully client-side web application designed to streamline the quotation and booking process for a banquet hall. 

## 🚀 Features
-   **Dynamic Quote Builder:** Add items, apply fixed or percentage discounts, and calculate taxes/deposits in real-time.
-   **Custom PDF Generation:** Uses jsPDF to generate professional, branded PDF quotes with automatic text-wrapping and pagination.
-   **Food Menu Management:** Categorised (Desi/Western) menus with the ability to edit and add items dynamically.
-   **Google Drive Integration:** Automatically uploads or overwrites PDF quotes to a designated Google Drive folder.
-   **Google Sheets Database:** Logs all quote details into a spreadsheet. Automatically moves "Booked" quotes to a separate tab and sorts them chronologically by event date.
-   **Gmail Integration:** Sends the generated PDF directly to the client's email address.
-   **Local Storage:** Auto-saves form data so the user never loses their work if the browser closes.

## 🛠️ Tech Stack
-   **Frontend:** Vanilla JavaScript (ES6+), HTML5, CSS3
-   **Libraries:** jsPDF, jspdf-autotable
-   **Cloud APIs:** Google Drive API, Google Sheets API, Gmail API
-   **Authentication:** Google OAuth 2.0
-   **Environment:** Python (Local HTTP Server), Windows Batch Scripting

## ⚙️ Setup Instructions
1. Clone this repository.
2. Set up a project in the Google Cloud Console.
3. Enable the Google Drive, Google Sheets, and Gmail APIs.
4. Create an OAuth 2.0 Client ID (Web Application) and add `http://127.0.0.1:5500` to the Authorized Origins.
5. Open the HTML file and replace `YOUR_CLIENT_ID_HERE` with your actual Client ID.
6. Run `Start-Server.bat` to launch the local Python server and open the app in your browser.

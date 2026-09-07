from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# ----------------------------------------------------
# Basic Selenium test for Signup Page (Beginner Level)
# ----------------------------------------------------

# 1. Open Chrome browser
driver = webdriver.Chrome()

# 2. Open the signup page
driver.get("https://shopkart.example.com/signup")   # Replace with your actual URL

# Wait for page to load
time.sleep(2)

# 3. Fill the signup form
driver.find_element(By.ID, "firstName").send_keys("Ali")
driver.find_element(By.ID, "lastName").send_keys("Khan")
driver.find_element(By.ID, "email").send_keys("alikhan123@example.com")
driver.find_element(By.ID, "password").send_keys("StrongPass123!")
driver.find_element(By.ID, "confirmPassword").send_keys("StrongPass123!")

# 4. Click on the Signup / Submit button
driver.find_element(By.ID, "submitButton").click()

# 5. Wait for result (success message or navigation)
time.sleep(3)

# 6. Print the current URL to check if signup succeeded
print("After submitting form, current page URL is:")
print(driver.current_url)

# 7. Close the browser
driver.quit()
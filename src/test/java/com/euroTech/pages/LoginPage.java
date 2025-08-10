package com.euroTech.pages;

import com.euroTech.utilities.ConfigurationReader;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends BasePage{

    @FindBy(id="email")
    public static WebElement emailBox;

    @FindBy(id="yourPassword")
    public WebElement passwordBox;

    @FindBy(xpath = "//button")
    public WebElement loginBtn;

    public void login(){
        emailBox.sendKeys(ConfigurationReader.get("userEmail"));
        passwordBox.sendKeys(ConfigurationReader.get("password"));
        loginBtn.click();
    }
    public void login(String userEmail,String password){
        emailBox.sendKeys(userEmail);
        passwordBox.sendKeys(password);
        loginBtn.click();
    }



}

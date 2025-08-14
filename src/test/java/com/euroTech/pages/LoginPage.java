package com.euroTech.pages;


import com.euroTech.utilities.ConfigurationReader;
import com.euroTech.utilities.Driver;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;

import java.util.List;

public class LoginPage extends BasePage{

    @FindBy(id="email")
    private WebElement emailBox;

    @FindBy (id = "yourPassword")
    private WebElement passwordBox;

    @FindBy (xpath = "//button")
    private WebElement loginBtn;


    public void login() {
        emailBox.sendKeys(ConfigurationReader.get("email"));
        passwordBox.sendKeys(ConfigurationReader.get("password"));
        loginBtn.click();
    }

    public void login(String email, String password) {
        emailBox.sendKeys(email);
        passwordBox.sendKeys(password);
        loginBtn.click();
    }

    public String getWarningMessage(String messageText){
        return Driver.get().findElement(By.xpath("//div[contains(text(),'"+messageText+"')]")).getText();
    }

    public void verifyWarningMessage(String expectedMessage){
        Assert.assertEquals(expectedMessage,getWarningMessage(expectedMessage));

    }

}

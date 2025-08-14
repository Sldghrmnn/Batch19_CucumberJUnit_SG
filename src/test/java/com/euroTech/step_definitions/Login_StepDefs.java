package com.euroTech.step_definitions;

import com.euroTech.pages.DashboardPage;
import com.euroTech.pages.LoginPage;
import com.euroTech.utilities.ConfigurationReader;
import com.euroTech.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;
import java.util.Map;

public class Login_StepDefs {

    LoginPage loginPage = new LoginPage();
    DashboardPage dashboardPage = new DashboardPage();

    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {
        Driver.get().get(ConfigurationReader.get("url"));
        //System.out.println("The user navigates to the login page");
    }
    @When("The user enters Zelda's credentials")
    public void the_user_enters_zelda_s_credentials() {
        /*
        Driver.get().findElement(By.id("email")).sendKeys(ConfigurationReader.get("email"));
        Driver.get().findElement(By.id("yourPassword")).sendKeys(ConfigurationReader.get("password"));
        Driver.get().findElement(By.xpath("//button[text()='Login']")).click();
       */
        loginPage.login(ConfigurationReader.get("email"),ConfigurationReader.get("password"));
        // System.out.println("The user enters Zelda's valid credentials");

    }
    @Then("The user should be able to see dashboard page")
    public void the_user_should_be_able_to_see_dashboard_page() {
    /*    String actualUserName = Driver.get().findElement(By.tagName("h2")).getText();
        String expectedUserName = ConfigurationReader.get("userName");
        Assert.assertEquals(actualUserName,expectedUserName);
    */
        dashboardPage.verifyUsername(ConfigurationReader.get("userName"));
        // System.out.println("The user enters the dashboard page");
    }

    @When("The user enters Mansimmo's credentials")
    public void the_user_enters_mansimmo_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_mansimmo"),ConfigurationReader.get("password_mansimmo"));
     //   System.out.println("The user enters Manssimo's valid credentials");
    }
    @Then("The user should be able to see Mansimmo's name on the dashboard page")
    public void the_user_should_be_able_to_see_mansimmo_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_mansimmo"));
    }

    @When("The user enters mike's credentials")
    public void the_user_enters_mike_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_mike"),ConfigurationReader.get("password_mike"));
       // System.out.println("The user enters mike's valid credentials");
    }
    @Then("The user should be able to see mike's name on the dashboard page")
    public void the_user_should_be_able_to_see_mike_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_mike"));
    }

    @When("The user enters Rosa's credentials")
    public void the_user_enters_rosa_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_rosa"),ConfigurationReader.get("password_rosa"));
       // System.out.println("The user enters Rosa's valid credentials");
    }
    @Then("The user should be able to see Rosa's name on the dashboard page")
    public void the_user_should_be_able_to_see_rosa_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_rosa"));
    }

    @When("The user enters Leroy's credentials")
    public void the_user_enters_leroy_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_leroy"),ConfigurationReader.get("password_leroy"));

    }
    @Then("The user should be able to see Leroy's name on the dashboard page")
    public void the_user_should_be_able_to_see_leroy_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_leroy"));

    }
    @When("The user logins with {string} and {string}")
    public void the_user_logins_with_and(String email, String password) {
        loginPage.login(email,password);
    }
    @Then("The user should be able to see {string} on dashboard page")
    public void the_user_should_be_able_to_see_on_dashboard_page(String username) {
        dashboardPage.verifyUsername(username);
    }

    @Then("The number is {int}")
    public void the_number_is(Integer intNumber) {
        System.out.println(intNumber);
    }
    @Then("The number also is {double}")
    public void the_number_also_is(Double doubleNumber) {
        System.out.println(doubleNumber);
    }
    @Then("The number can be {double}")
    public void the_number_cam_be(Double double1Number) {
        System.out.println(double1Number);
    }

    @When("The user login and verify with following credentials")
    public void the_user_login_and_verify_with_following_credentials(List<String> credentials) {
       loginPage.login(credentials.get(0),credentials.get(1));
       dashboardPage.verifyUsername(credentials.get(2));
    }

    @When("The user login and verify with following credentials map")
    public void the_user_login_and_verify_with_following_credentials_map(Map<String,String> credentialsMap) {
       loginPage.login(credentialsMap.get("user_email"),credentialsMap.get("password"));
       dashboardPage.verifyUsername(credentialsMap.get("user_name"));
    }

    @Then("The user should be able to see warning {string}")
    public void the_user_should_be_able_to_see_warning(String warningMessage) {


    }














}

public class LightningChangeLanguage {
@AuraEnabled
public static string changeLang(String lang) {
    String currentuserId = UserInfo.getUserId();
    String username = UserInfo.getUserName();
    User currentUserInfo = [select Id, LanguageLocaleKey from User where Username = :username];
    currentUserInfo.LanguageLocaleKey = lang;
    update currentUserInfo;
    return 'OK';
}
}
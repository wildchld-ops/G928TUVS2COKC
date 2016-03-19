.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iput-boolean p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->val$success:Z

    if-eqz v5, :cond_2

    const-string v5, "SamsungIME"

    const-string v6, "SwiftkeyLanguagePreference.VOlistener : Complete to Download Swiftkey langaue"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "download-vocur"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-vomax"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skmax"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skcur"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-state"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsDownloaded:Z
    invoke-static {v5, v10}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1402(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v5, v10}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1702(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    const v4, 0x7f0d015a

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1900(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1600()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1600()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setChangedMainValuesForStartInputView(Z)V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sendSupportLanguage()V

    :goto_1
    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v3

    const-string v5, "RELOAD_LANGUAGEPACK"

    invoke-interface {v3, v5, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    const v4, 0x7f0d015f

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SwiftkeyLanguagePreference.VOlistener : Fail to Download Swiftkey langaue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "download-vocur"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-vomax"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skmax"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skcur"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-state"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {}, Lcom/ime/framework/util/Utils;->getAvailableInternalMemory()J

    move-result-wide v0

    const-wide/16 v6, 0x64

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v5, v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2100()Z

    move-result v5

    if-nez v5, :cond_3

    const v4, 0x7f0d015c

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_4
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadingState(Z)V
    invoke-static {v5, v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2102(Z)Z

    goto/16 :goto_2

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v6, 0x2

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    const v4, 0x7f0d015d

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_0
    move-exception v5

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

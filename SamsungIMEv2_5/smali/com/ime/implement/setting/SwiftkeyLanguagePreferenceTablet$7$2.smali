.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iput-boolean p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "download-state"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-ne v2, v11, :cond_1

    iget-boolean v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->val$success:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->checkVaildVOLP()Z
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "SamsungIME"

    const-string v8, "SwiftkeyLanguagePreference.VOlistener : Complete to Download VO langaue"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "download-vocur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-vomax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skmax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skcur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-state"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v7, v11}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    const v6, 0x7f0d015a

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v9, v9, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v9, v9, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v5

    const-string v7, "RELOAD_LANGUAGEPACK"

    invoke-interface {v5, v7, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_1
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->notifyVODBListUpdated()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadSwiftkeyLanguage(Z)V
    invoke-static {v7, v11}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V

    goto :goto_1

    :cond_3
    const-string v7, "SamsungIME"

    const-string v8, "SwiftkeyLanguagePreference.VOlistener : Fail to Download VO langaue"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "download-vocur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-vomax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skmax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skcur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-state"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {}, Lcom/ime/framework/util/Utils;->getAvailableInternalMemory()J

    move-result-wide v0

    const-wide/16 v8, 0x64

    cmp-long v7, v0, v8

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v7, v10}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2100()Z

    move-result v7

    if-nez v7, :cond_4

    const v6, 0x7f0d015c

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v9, v9, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v9, v9, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadingState(Z)V
    invoke-static {v7, v10}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z
    invoke-static {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2102(Z)Z

    goto/16 :goto_2

    :cond_5
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v8, 0x2

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v7, v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    const v6, 0x7f0d015d

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v7, v7, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$2;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v8, v8, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_0
    move-exception v7

    goto/16 :goto_3

    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

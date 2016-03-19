.class public Lcom/ime/implement/setting/ResetSettings;
.super Landroid/preference/DialogPreference;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;
    }
.end annotation


# static fields
.field private static final KEY_PRESS_MODEL_DB_DIR_EX:Ljava/lang/String; = "KeyPressModelEx"


# instance fields
.field private mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

.field protected final mContext:Landroid/content/Context;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsKor:Z

.field private mIsTablet:Z

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;-><init>(Lcom/ime/implement/setting/ResetSettings;Lcom/ime/implement/setting/ResetSettings$1;)V

    iput-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    iput-object p1, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->init()V

    return-void
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/ResetSettings;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ResetSettings;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/ResetSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->clearUserModel()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/ResetSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->removeKPMExFolder()V

    return-void
.end method

.method private bindToService()V
    .locals 4

    const-string v1, "SamsungIME"

    const-string v2, "Bind to personalizer service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private clearLastestEmoticonsList()V
    .locals 7

    const-string v1, "emoticons"

    const-string v0, "LastestEmoticonList"

    invoke-virtual {p0}, Lcom/ime/implement/setting/ResetSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoticons"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "LastestEmoticonList"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->clearLastestEmoticonList()V

    return-void
.end method

.method private clearUserModel()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    invoke-virtual {v3}, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerService;->clearLanguageData()Z

    move-result v1

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v0, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v2, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->setDeletedBit(Z)V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/scloudsync/LMSyncItem;->saveDeletedBit()V

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;->triggerSync(Landroid/content/Context;)V

    const-string v3, "SamsungIME_SYNC"

    const-string v4, "Clear LM Data. Try to trigger Sync..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->resetAddwordListFile()V

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->resetRemovedWordDB()V

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->removeKPMExFolderByThread()V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    return-void
.end method

.method private removeKPMExFolder()V
    .locals 9

    iget-object v6, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModelEx"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeKPMExFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/implement/setting/ResetSettings$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/ResetSettings$1;-><init>(Lcom/ime/implement/setting/ResetSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/ime/implement/setting/ResetSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/implement/setting/ResetSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/ime/implement/setting/ResetSettings;->setClearUserModel()V

    invoke-direct {v0}, Lcom/ime/implement/setting/ResetSettings;->bindToService()V

    invoke-virtual {v0}, Lcom/ime/implement/setting/ResetSettings;->resetAll()V

    :cond_0
    return-void
.end method

.method private resetHwrSettings()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const-string v3, "SETTINGS_DEFAULT_HWR_ON"

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "hwr_settings"

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.inputmethod_preferences"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v5, "500"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const-string v4, "5"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const-string v4, "2"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_WRITING_STYLE"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_SCH_TCH_SWITCH"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private resetSettingsByCSC()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ime/framework/util/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/ime/framework/util/CSCReadAndSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/util/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private resetSettingsByPropertise()V
    .locals 3

    new-instance v0, Lcom/ime/framework/repository/PropertyLoader;

    invoke-direct {v0}, Lcom/ime/framework/repository/PropertyLoader;-><init>()V

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ime/framework/repository/PropertyLoader;->loadAndSetToPreference(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "Reset settings from properties.xml was failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetXT9Settings()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    if-eqz v4, :cond_1

    const-string v4, "prediction_setting"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v4, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v5, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v6, "2"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :cond_1
    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_0
.end method

.method private setChecked(Landroid/preference/TwoStatePreference;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setClearUserModel()V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->setClearUserModelModel(Z)V

    :cond_0
    return-void
.end method

.method private setResetAutoReplacement()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ko"

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setResetAutoText()V
    .locals 7

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v5, "SwiftKey"

    const v6, 0x8000

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "autotext"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->removeCachedAllUserWord()V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setResetLanguageListSettings()V
    .locals 15

    const-string v12, "SETTINGS_INPUT_LANGUAGES"

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v13, "com.sec.android.inputmethod_preferences"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v12, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    const-string v13, ""

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "select_swiftkey_language_list"

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_3

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/high16 v13, 0x6b6f0000

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-string v12, "0"

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method private setResetSpellChecker()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->makeSpellCheckerPrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->isSpellCheckerSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private unbindFromService()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    invoke-virtual {v0}, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Unbind from personalizer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mConnection:Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->bindToService()V

    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/ResetSettings;->unbindFromService()V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected resetAll()V
    .locals 53
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/InputModeStatus;->setChangedMainValuesForStartInputView(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->resetSettingsByPropertise()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->resetSettingsByCSC()V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "com.sec.android.inputmethod_preferences"

    const/16 v51, 0x1

    invoke-virtual/range {v49 .. v51}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v49

    if-nez v49, :cond_6

    const/16 v24, 0x1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v49

    sget-object v50, Lcom/sec/android/app/CscFeatureTagSipDummy;->TAG_CSCFEATURE_SIP_DISABLE_PERSONALIZED_DATA:Ljava/lang/String;

    invoke-virtual/range {v49 .. v50}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v49, "first_allow_app_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_allow_app_messages_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_allow_app_contacts_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_use_network_connections_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_transfer_data_in_background_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission_checkbox"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission_messages_checkbox"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission_contacts_checkbox"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "use_network_connection_checkbox"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "transfer_data_in_background_checkbox"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission_messages"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "allow_app_permission_contacts"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "transfer_data_in_background"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "use_network_connection"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_live_language_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "fist_hwr_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_pinch_zoom_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_predictive_text_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_trace_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "swiftkey_download_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "swiftkey_download_list_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_swiftkey_download_list_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "swiftkey_download_list_checkbox"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_one_handed_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_pen_detection_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_auto_replacement_tap_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_mmkey_popup_help_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_keyboardchange_popup_help_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_languagechange_popup_help_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_empty_shortcuts_guide_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_dragon_voice_legal_information_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "chn_symbol_lock"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "keyboard_height_level"

    const/16 v50, 0x2

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v49, "keyboard_height_level_landscape"

    const/16 v50, 0x2

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v49, "first_mobilekeyboard_change_language_popup_excution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->resetKeyboardHeightLevel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->resetKeyboardHeightDelta()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-interface/range {v49 .. v50}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->resetNeedMakeNewViewForFloating()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    if-eqz v49, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v49

    const/16 v50, 0x4

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v49

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v49

    if-nez v49, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "com.sec.android.inputmethod.height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v51

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->setQwertyInputMethod()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->resetMultiwindowArrange()V

    :cond_3
    if-eqz v23, :cond_a

    const-string v49, "first_swiftkey_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v50, "SETTINGS_USE_STANDARD_DATA"

    if-nez v22, :cond_8

    const/16 v49, 0x1

    :goto_2
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    if-eqz v49, :cond_9

    const-string v49, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_3
    const-string v49, "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v51, 0x0

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    const-string v49, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_4
    if-nez v24, :cond_c

    const-string v49, "first_xt9_9_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v50, "support_dlm"

    if-nez v22, :cond_b

    const/16 v49, 0x1

    :goto_5
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v51, 0x0

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    const-string v49, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_SPELL_CHECKER"

    const/16 v51, 0x0

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    const-string v49, "SETTINGS_DEFAULT_SPELL_CHECKER"

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "sip_key_feedback_vibration"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v49

    const-string v50, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual/range {v49 .. v50}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_5

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "sip_key_feedback_sound"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v49

    const-string v50, "CscFeature_Sip_CheckTutorialGuideDialogAsDefault"

    invoke-virtual/range {v49 .. v50}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v49, "true"

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v51, 0x1

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_8
    const-string v49, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v50, "settings_hold_delay_medium"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v49, 0x12c

    invoke-static/range {v49 .. v49}, Lcom/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    const/16 v17, 0x1

    :goto_9
    const/16 v49, 0xa

    move/from16 v0, v17

    move/from16 v1, v49

    if-gt v0, v1, :cond_f

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "phrase"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "com.sec.android.inputmethod.height_landscape"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v51

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    const/16 v49, 0x0

    goto/16 :goto_2

    :cond_9
    const-string v49, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    :cond_a
    const-string v49, "first_swiftkey_execution"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :cond_b
    const/16 v49, 0x0

    goto/16 :goto_5

    :cond_c
    const-string v49, "first_xt9_9_execution"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "sip_key_feedback_sound"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v51, 0x0

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_f
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v49, "da_mode"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-interface/range {v49 .. v50}, Lcom/ime/framework/common/InputManager;->setCheckDontShowPinchZoomGuide(Z)V

    const/16 v47, 0x0

    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v42

    move-object/from16 v0, v42

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_10

    check-cast v42, Landroid/preference/SwitchPreference;

    const-string v49, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_10
    const-string v49, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_11

    const-string v49, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    if-eqz v49, :cond_12

    const-string v49, "SETTINGS_DEFAULT_NEXT_WORD_WITH_SPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_12

    const-string v49, "SETTINGS_DEFAULT_NEXT_WORD_WITH_SPACE"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_12
    const-string v49, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_13

    const-string v49, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_13
    const-string v49, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v42

    move-object/from16 v0, v42

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_14

    check-cast v42, Landroid/preference/SwitchPreference;

    const-string v49, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_14
    const-string v49, "SETTINGS_USE_STANDARD_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_15

    const-string v50, "SETTINGS_USE_STANDARD_DATA"

    if-nez v22, :cond_2f

    const/16 v49, 0x1

    :goto_a
    move-object/from16 v0, v43

    move-object/from16 v1, v50

    move/from16 v2, v49

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_15
    const-string v49, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_16

    const-string v49, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_16
    const-string v49, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_17

    const-string v49, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_17
    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_18

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    invoke-static {}, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->getInstance()Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v36

    const/16 v35, 0x0

    sget-boolean v49, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v49, :cond_30

    const-string v49, "doing_one_in_power_saving_mode"

    const/16 v50, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->getData(Ljava/lang/String;I)I

    move-result v35

    :goto_b
    if-nez v35, :cond_18

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "sip_key_feedback_vibration"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    :goto_c
    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_19

    const-string v49, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_19
    const-string v49, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1a

    const-string v49, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1a
    const-string v49, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1b

    const-string v49, "SETTINGS_DEFAULT_TRACE"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1c

    const-string v49, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1c

    const-string v49, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1c
    const-string v49, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1d

    const-string v49, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1d
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1e

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1e
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1f

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v49, v0

    if-nez v49, :cond_25

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    const/16 v20, 0x0

    if-eqz v31, :cond_20

    invoke-static {}, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->getInstance()Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v36

    const-string v34, ""

    sget-boolean v49, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v49, :cond_32

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v36

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    :goto_d
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v31 .. v31}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v49

    aget-object v49, v49, v20

    move-object/from16 v0, v31

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_20
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v49

    if-eqz v49, :cond_22

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Lcom/sec/android/inputmethod/SpinnerPreference;

    if-eqz v39, :cond_21

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v39

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setValue(Ljava/lang/String;)V

    :cond_21
    if-eqz v39, :cond_22

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v49

    aget-object v49, v49, v20

    move-object/from16 v0, v39

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_22
    if-nez v23, :cond_23

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_23

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    if-eqz v47, :cond_23

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_23
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_24

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v4, v1}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_24
    const-string v49, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_25

    const-string v49, "SETTINGS_DEFAULT_ONE_HAND"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_26

    if-nez v23, :cond_26

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_26

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    if-eqz v47, :cond_26

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_2c

    const-string v49, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    if-eqz v26, :cond_27

    const-string v49, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v50, 0x1

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_28

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v49, v0

    if-eqz v49, :cond_28

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    if-eqz v47, :cond_28

    const-string v49, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v50, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_28
    const-string v49, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    const/16 v20, 0x0

    if-eqz v32, :cond_29

    const-string v49, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v50, 0x1

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v32 .. v32}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v49

    aget-object v49, v49, v20

    move-object/from16 v0, v32

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_29
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    if-eqz v32, :cond_2a

    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v32 .. v32}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v49

    aget-object v49, v49, v20

    move-object/from16 v0, v32

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2a
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v49

    if-eqz v49, :cond_2c

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Lcom/sec/android/inputmethod/SpinnerPreference;

    if-eqz v39, :cond_2b

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v39

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setValue(Ljava/lang/String;)V

    :cond_2b
    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v44

    check-cast v44, Lcom/sec/android/inputmethod/SpinnerPreference;

    if-eqz v44, :cond_2c

    const-string v49, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/inputmethod/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v49

    aget-object v49, v49, v20

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->resetHwrSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->resetXT9Settings()V

    if-nez v21, :cond_43

    if-nez v23, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    if-eqz v49, :cond_36

    move-object/from16 v5, v48

    array-length v0, v5

    move/from16 v30, v0

    const/16 v18, 0x0

    :goto_e
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_37

    aget-object v27, v5, v18

    const v11, 0x7a68434e

    const-string v49, "ro.csc.country_code"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v49, "CHINA"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_33

    const v11, 0x7a68434e

    :cond_2d
    :goto_f
    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    move/from16 v0, v49

    if-eq v0, v11, :cond_2e

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v49

    const v50, 0x656e5553

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_35

    :cond_2e
    const-string v49, "0x%08x"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v0, v11, v1}, Lcom/ime/framework/common/InputManager;->setLanguage(IZ)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    :cond_2f
    const/16 v49, 0x0

    goto/16 :goto_a

    :cond_30
    const-string v49, "doing_one_in_power_saving_mode"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    goto/16 :goto_b

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "sip_key_feedback_vibration"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_32
    const-string v49, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_d

    :cond_33
    const-string v49, "HONG KONG"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_34

    const v11, 0x7a68484b

    goto/16 :goto_f

    :cond_34
    const-string v49, "TAIWAN"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2d

    const v11, 0x7a685457

    goto/16 :goto_f

    :cond_35
    const-string v49, "0x%08x"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_10

    :cond_36
    move-object/from16 v5, v48

    array-length v0, v5

    move/from16 v30, v0

    const/16 v18, 0x0

    :goto_11
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_37

    aget-object v27, v5, v18

    const-string v49, "0x%08x"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v18, v18, 0x1

    goto :goto_11

    :cond_37
    const-string v49, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ResetSettings;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v29

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v46

    const/16 v38, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    :goto_12
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v19

    move/from16 v1, v49

    if-ge v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    aget-object v50, v46, v19

    invoke-virtual/range {v50 .. v50}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v50

    aget-object v51, v46, v19

    invoke-virtual/range {v51 .. v51}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v51

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v49, "0x%08x"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget-object v52, v46, v19

    invoke-virtual/range {v52 .. v52}, Lcom/ime/framework/common/Language;->getId()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_39

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->length()I

    move-result v49

    if-lez v49, :cond_38

    const-string v49, ", "

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    aget-object v49, v46, v19

    invoke-virtual/range {v49 .. v49}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v49, "select_language_list_"

    move-object/from16 v0, v28

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v49, "ja"

    aget-object v50, v46, v19

    invoke-virtual/range {v50 .. v50}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_3a

    const-string v49, "zh"

    aget-object v50, v46, v19

    invoke-virtual/range {v50 .. v50}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3c

    const-string v49, "CN"

    aget-object v50, v46, v19

    invoke-virtual/range {v50 .. v50}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3c

    :cond_3a
    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    :cond_3b
    :goto_13
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_12

    :cond_3c
    const-string v49, "ko"

    aget-object v50, v46, v19

    invoke-virtual/range {v50 .. v50}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3d

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    :cond_3d
    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    :cond_3e
    if-eqz v29, :cond_3f

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetSpellChecker()V

    const-string v49, "SETTINGS_DEFAULT_TRACE"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-nez v49, :cond_42

    const-string v49, "settings_keyboard_swipe"

    const-string v50, "settings_keyboard_swipe_none"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_40
    :goto_14
    const-string v49, "first_tips_all_execution"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "LAST_USED_LATELY_USED_SYMBOLS_KEY_CODE"

    const/16 v51, 0x2e

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v13

    const-string v49, "last_used_lately_used_symbols_key_code"

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "LAST_USED_MOBILE_KEYBOARD_CUSTOM_KEY_SYMBOL"

    const-string v51, ""

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v49, "last_used_mobile_keyboard_custom_key_symbol"

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetAutoText()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->clearLastestEmoticonsList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v49

    if-eqz v49, :cond_41

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getInstance()Lcom/ime/framework/view/toolbar/ToolBarManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/ime/framework/view/toolbar/ToolBarManager;->resetSettingToolbar()V

    :cond_41
    return-void

    :cond_42
    const-string v49, "settings_keyboard_swipe"

    const-string v50, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_TRACE"

    const/16 v51, 0x1

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_14

    :cond_43
    if-eqz v23, :cond_40

    const/16 v38, 0x0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v6

    const/16 v25, 0x0

    const/16 v16, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_44
    :goto_15
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_4c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/touchtype_fluency/util/LanguagePack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v51

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_44

    const/16 v49, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v49

    if-eqz v49, :cond_47

    const/16 v49, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v49, "select_language_list_"

    move-object/from16 v0, v28

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v49, v0

    if-nez v49, :cond_4a

    const-string v49, "ja"

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_45

    const-string v49, "zh"

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_48

    :cond_45
    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    :cond_46
    :goto_16
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_44

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v49

    const-string v50, "KR"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4b

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v49

    const-string v50, "ko"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4b

    move-object/from16 v25, v32

    goto/16 :goto_15

    :cond_48
    const-string v49, "ko"

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_49

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_16

    :cond_49
    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_16

    :cond_4a
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-interface {v15, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_4b
    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v49

    const-string v50, "US"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_44

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v49

    const-string v50, "en"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_44

    move-object/from16 v16, v32

    goto/16 :goto_15

    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4e

    if-eqz v25, :cond_4d

    invoke-interface/range {v25 .. v25}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v49

    if-nez v49, :cond_4d

    const/16 v49, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v25 .. v25}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-interface/range {v25 .. v25}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v51

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const/16 v49, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4d
    if-eqz v16, :cond_4e

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v49

    if-nez v49, :cond_4e

    const/16 v49, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v50

    invoke-interface/range {v16 .. v16}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v51

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const/16 v49, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4e
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetLanguageListSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->setResetSpellChecker()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    const/high16 v50, 0x6b6f0000

    invoke-interface/range {v49 .. v50}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v49

    const-string v50, "0"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v49, v0

    const v50, 0x7a68434e

    invoke-interface/range {v49 .. v50}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v49

    const-string v50, "0"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4f
    const-string v49, "SETTINGS_DEFAULT_TRACE"

    const/16 v50, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-nez v49, :cond_50

    const-string v49, "settings_keyboard_swipe"

    const-string v50, "settings_keyboard_swipe_none"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/setting/ResetSettings;->clearUserModel()V

    goto/16 :goto_14

    :cond_50
    const-string v49, "settings_keyboard_swipe"

    const-string v50, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_TRACE"

    const/16 v51, 0x1

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/ResetSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v49, v0

    const-string v50, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    const/16 v51, 0x0

    invoke-interface/range {v49 .. v51}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_17
.end method

.class public Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;
.super Landroid/preference/Preference;
.source "SwiftkeyLanguagePreferenceTablet.java"


# static fields
.field private static final DOWNLOADING_NOTIFICATION_INIT:I = -0x1

.field private static final NOTIFICATION_BATCH_UPDATE_INTERVAL:I = 0x1b58

.field private static final NOTIFICATION_COUNT:I = 0x1

.field private static final NOTIFICATION_NORMAL_UPDATE_INTERVAL_NUMBERS:I = 0x2

.field private static final NOTIFICATION_SERVICEID:I = 0x0

.field private static final NOTIFICATION_UPDATED_TIME:I = 0x2

.field private static mInputManager:Lcom/ime/framework/common/InputManager;

.field private static mIsCanceled:Z

.field private static mlanguageID:Ljava/lang/String;

.field private static notificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field private final DOWNLOAD_CANCELLED:I

.field private final DOWNLOAD_FAILED:I

.field private final DOWNLOAD_FAILED_NOT_ENOUGH_SPACE:I

.field private final DOWNLOAD_SUCCESS:I

.field private final MAX_LANGUAGEPACK_SIZE_MB:J

.field VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

.field private cancelButton:Landroid/widget/Button;

.field private downloadButton:Landroid/widget/ImageView;

.field private final downloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private enableSwitch:Landroid/widget/Switch;

.field private languageItemView:Landroid/view/View;

.field private languageNameTitle:Ljava/lang/String;

.field listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mIsDownloaded:Z

.field private mIsVOHWRenable:Z

.field private final mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

.field private mLanguagePackHashCode:I

.field private final mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mNetworkConnect:Landroid/content/BroadcastReceiver;

.field private final mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

.field private final mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

.field private mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

.field private final mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

.field private final mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

.field private mViewInvalidateInProgress:Z

.field private final notificationManager:Landroid/app/NotificationManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private titleGroup:Landroid/widget/LinearLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V
    .locals 7

    invoke-virtual {p2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DOWNLOAD_CANCELLED:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DOWNLOAD_FAILED:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DOWNLOAD_SUCCESS:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DOWNLOAD_FAILED_NOT_ENOUGH_SPACE:I

    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->MAX_LANGUAGEPACK_SIZE_MB:J

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$5;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$5;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    iput-object p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    iput-object p3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {p3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSplitRatioController()Lcom/ime/implement/setting/SettingsSplitRatioController;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPhoneModel()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsVOHWRenable:Z

    iput-boolean p6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsDownloaded:Z

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsVOHWRenable:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    :goto_1
    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    iput-object p4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    const v3, 0x7f03008e

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p4, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez p5, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_2
    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    :goto_3
    const-string v3, "Zawgyi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "z1"

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentVersion()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[TEMP]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p4, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const-string v3, "my"

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method private DownloadVOLanguage()V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference.VOlistener : Start to Download VO langaue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;

    invoke-direct {v1, p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->start()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadingState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->processingFailDownload()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsDownloaded:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelDownload()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->checkVaildVOLP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadSwiftkeyLanguage(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400()Lcom/ime/framework/common/InputManager;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadlanguagepack()V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mViewInvalidateInProgress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->handleLanguageEnableStatusChange()V

    return-void
.end method

.method private cancelDownload()V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> Start to cancel download : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-vocur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-vomax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skmax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skcur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$15;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$15;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/VOLanguagePack;->cancelDownload()V

    :cond_1
    const v1, 0x7f0d015b

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v5, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsCanceled:Z

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private checkVaildVOLP()Z
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "text"

    invoke-virtual {v2, v4}, Lcom/myscript/atk/rmc/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v4, "SamsungIME"

    const-string v5, "SwiftkeyLanguagePreference.checkVaildVOLP : No VO resource. Download fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createNotification(IIZZIIZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0159

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    const/4 v8, 0x0

    :goto_0
    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_1

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    const/4 v14, 0x0

    aget v13, v13, v14

    move/from16 v0, p2

    if-ne v13, v0, :cond_0

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.sec.android.inputmethod.SamsungKeypadSettings"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x20000000

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v9, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v13, "ar"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "ur"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v16, 0x7f0d0008

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u200e"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080081

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    if-nez p5, :cond_8

    mul-int/lit8 v13, p6, 0x64

    div-int/lit8 v11, v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    :goto_3
    const/4 v7, -0x1

    :try_start_0
    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    if-nez p3, :cond_4

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_3

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    const/4 v14, 0x0

    aget v13, v13, v14

    move/from16 v0, p2

    if-ne v13, v0, :cond_b

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    const/4 v14, 0x1

    aget v15, v13, v14

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    move v7, v8

    :cond_3
    const/4 v13, -0x1

    if-ne v7, v13, :cond_4

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput p2, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p3, :cond_5

    const/4 v13, -0x1

    if-eq v7, v13, :cond_5

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    if-eqz v13, :cond_c

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_c

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v16, 0x7f0d0008

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    :cond_8
    mul-int/lit8 v13, p6, 0x64

    div-int v11, v13, p5

    goto/16 :goto_2

    :cond_9
    if-eqz p7, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x7f020330

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v14, 0x1080082

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_c
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v3, v14

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    if-eqz v13, :cond_6

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_6

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int v13, v3, v13

    const/16 v14, 0x1b58

    if-le v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->notificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    const/4 v14, 0x2

    aput v3, v13, v14
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v6

    const-string v13, "SamsungIME"

    const-string v14, "Fail to update Notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private downloadSwiftkeyLanguage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    const-string v0, "SamsungIME"

    const-string v1, "SwiftkeyLanguagePreference.listener : Start to Download Swiftkey langaue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;->start()V

    :cond_2
    return-void
.end method

.method private downloadlanguagepack()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01aa

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsVOHWRenable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DownloadVOLanguage()V

    :goto_2
    invoke-direct {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBar(Z)V

    invoke-direct {p0, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadingState(Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    invoke-direct {p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadSwiftkeyLanguage(Z)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private drawProgressBar(Z)V
    .locals 20

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "download-skcur"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "download-skmax"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "download-vocur"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    const-string v1, "download-vomax"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar skcurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar vocurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v1, v17, v19

    if-nez v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference-drawProgressBar avoid ArithmeticException: divide by zero"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v17, v19

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v16, v18

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x7f0d015c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    const/4 v5, 0x1

    add-int v6, v17, v19

    add-int v7, v16, v18

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->createNotification(IIZZIIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v13

    const-string v15, ""

    const-string v1, "ar"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fa"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    mul-int/lit8 v1, v10, 0x64

    div-int/2addr v1, v13

    mul-int/lit8 v2, v10, 0x64

    div-int/2addr v2, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->toDigitString(II)Ljava/lang/String;

    move-result-object v15

    :goto_1
    if-eq v10, v13, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    const v2, 0x7f0905ca

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    const v2, 0x7f0905ca

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    goto/16 :goto_0

    :cond_4
    mul-int/lit8 v1, v10, 0x64

    div-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1
.end method

.method private drawProgressBarComplete(I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v1, 0x7f0d015b

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->createNotification(IIZZIIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const v1, 0x7f0d015c

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->createNotification(IIZZIIZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const v1, 0x7f0d015d

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->createNotification(IIZZIIZ)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_0

    const v1, 0x7f0d015a

    iget v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackHashCode:I

    const/16 v5, 0x64

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->createNotification(IIZZIIZ)V

    goto :goto_0
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030051

    return v0
.end method

.method public static getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v1, "he"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "iw"

    :cond_0
    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "z1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleLanguageEnableStatusChange()V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    const v2, 0x7f0d0160

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sendAccessibilityEvent(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0d015f

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private isDownloadInProgress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    return v0
.end method

.method private isUpdateAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processingFailDownload()V
    .locals 3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> Start to processingFailDownload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->doFailDownload()V

    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private showDownloadingState(Z)V
    .locals 6

    const v5, 0x7f0905ca

    const v2, 0x7f0905c5

    const/4 v4, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setHeight(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setHeight(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static final toDigitString(II)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_0

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateNotificationBar(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "download-state"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v1}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lez v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected ChangeSetEnabledState()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected CheckandSettheViewState(Landroid/view/View;)V
    .locals 10

    const v4, 0x7f0905ca

    const v9, 0x7f0905c5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const v2, 0x7f100036

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f1000df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    const v2, 0x7f10003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    const v2, 0x7f1000e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    const v2, 0x7f10003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    const v2, 0x7f1000e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    const v2, 0x7f1000e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$3;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$3;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setHeight(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setHeight(I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mSettingsSplitRatioController:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v2}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getSavedLeftPaneWidth()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0905c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v0

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->ChangeSetEnabledState()V

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/util/LanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-virtual {v2}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/rmc/VOLanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    :cond_3
    invoke-direct {p0, v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBar(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v8}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateNotificationBar(Z)V

    iget-boolean v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsDownloaded:Z

    if-nez v2, :cond_4

    iput-boolean v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mIsDownloaded:Z

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_8
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget-object v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->titleGroup:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->enableSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v7}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateNotificationBar(Z)V

    goto/16 :goto_0
.end method

.method public IntentForDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "network_err_type"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mobile_data_only"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x34000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "SamsungIME"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public MobileDataWarningForRoam()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getDownloadGuideLayoutRscId()I

    move-result v2

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v8, 0x7f0d01dd

    invoke-virtual {v7, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f100085

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v8, 0x7f0d01de

    invoke-virtual {v7, v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0d0154

    invoke-virtual {v0, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d00b5

    new-instance v8, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$8;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$8;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public MobileDataWarningForWiFi()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getDownloadGuideLayoutRscId()I

    move-result v2

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v8, "VZW"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v9, 0x7f0d017b

    invoke-virtual {v8, v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v8, 0x7f100085

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v9, 0x7f0d01dc

    invoke-virtual {v8, v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0d0154

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0d00b5

    new-instance v9, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$9;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$9;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const v9, 0x7f0d01db

    invoke-virtual {v8, v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageItemView:Landroid/view/View;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->CheckandSettheViewState(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->languageItemView:Landroid/view/View;

    return-void
.end method

.method protected onClick()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mViewInvalidateInProgress:Z

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->handleLanguageEnableStatusChange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mViewInvalidateInProgress:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->invalidateOptionsMenu()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloadInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadlanguagepack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadGuideDialog()V

    goto :goto_0
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->IntentForDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->IntentForDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->IntentForDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->MobileDataWarningForRoam()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->IntentForDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->IntentForDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method

.method public showUseNetworkConnectionsDialog()V
    .locals 17

    const v12, 0x7f0300a3

    const v11, 0x7f0d016d

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0d016e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0d0008

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v13, 0x7f100111

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const v13, 0x7f10000d

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const-string v13, "use_network_connection_checkbox"

    const/4 v14, 0x1

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x104000a

    new-instance v14, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$10;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v13, 0x1040000

    new-instance v14, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v13, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$12;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

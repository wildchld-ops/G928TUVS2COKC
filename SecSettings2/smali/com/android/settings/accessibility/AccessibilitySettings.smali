.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

.field private static KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final isReminderTwo:Z

.field static isTalkbackInstalled:Z

.field private static mFolderTypeFeature:I

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSetupWizard:Z

.field private isDANotCheck:Z

.field private mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirectAccess:Landroid/preference/PreferenceScreen;

.field private mDirectionLock:Landroid/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field private mManageAccessibility:Z

.field private mMoresettingsCategory:Landroid/preference/PreferenceCategory;

.field private mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

.field private mNotificationReminder:Landroid/preference/PreferenceScreen;

.field private mRotation2ndObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

.field mSupportFolderType:Z

.field private mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

.field private mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    const-string v0, "share_acc_setting_menu"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    const-string v0, "notification_preference"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    sput v1, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$7;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static FolderTypeFeature(Landroid/content/Context;)I
    .locals 3

    const-string v0, "AccessibilitySettings"

    const-string v1, "FolderTypeFeature"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    :goto_0
    const-string v0, "AccessibilitySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FolderTypeFeature: mFolderTypeFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    return v0

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFolderTypeFeature:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    return-object v0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private handleToggleAutoRotateScreen2ndPreferenceClick()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "moresettings_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v4, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    sget-boolean v4, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    const-string v4, "call_answering_ending"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "AccessibilitySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallAnsweringEning getCurrentUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v4, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

    const v7, 0x7f0a09d1

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_4
    const-string v4, "direct_access"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    const-string v4, "universal_lock"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectionLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "shopdemo"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_b

    :goto_1
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.samsung.android.app.shareaccessibilitysettings"

    invoke-static {v4, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "AccessibilitySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Manage accessiblity getCurrentUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "firstRun"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "moresettings_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/high16 v4, 0x1e40000

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    iget-boolean v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a1004

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectionLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0a092b

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setTitleDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectionLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_c
    move v4, v6

    goto :goto_2
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    :goto_1
    return v4

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private loadInstalledServices()V
    .locals 8

    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDefaultPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_second"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_interaction"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updateDirectAccessStatus()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_accessibility"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_talkback"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_negative"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_greyscale"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_samsung_screen_reader"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_color_adjustment"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_access_control"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_s_talkback"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_universal_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_access_magnifier"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateManageAccessibilityMenu()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "AccessibilitySettings"

    const-string v2, "updateManageAccessibilityMenu() "

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "importNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    if-nez v23, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "accessibility_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    const/4 v10, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v10, v6, :cond_2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v11, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    const v23, 0x7f0a0a28

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_7

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v17, 0x1

    :goto_3
    if-eqz v17, :cond_8

    const v23, 0x7f0a0e2d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_4
    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v23, "com.samsung.android.app.talkback"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    :cond_8
    const v23, 0x7f0a0e2e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    :cond_9
    const-string v23, "com.samsung.android.universalswitch"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "com.samsung.android.app.screenreader"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "com.sec.android.app.camera"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "com.sec.android.app.camera.plb"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    if-eqz v14, :cond_a

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    :cond_a
    const/16 v16, 0x1

    :goto_6
    if-nez v16, :cond_b

    if-eqz v17, :cond_f

    :cond_b
    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    if-eqz v16, :cond_10

    move-object/from16 v21, v18

    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    const-class v23, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v23, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_c

    const v23, 0x7f0a0a29

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_c
    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    const-string v23, "settings_title"

    const v24, 0x7f0a08ea

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_10
    const v23, 0x7f0a08ed

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8
.end method

.method private updateSettingsScreen()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AccessibilitySettings"

    const-string v4, "onChange() "

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "AccessibilitySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCESS_CONTROL_ENABLED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AccessibilitySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v1, "mFromTalkback"

    invoke-virtual {v9, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v1, "AccessibilitySettings"

    const-string v3, "Vision Preference called"

    invoke-static {v1, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a095f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->setHasOptionsMenu(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-void

    :cond_2
    const-string v1, "AccessibilitySettings"

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilitySettingsSetupWizard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x7f120000

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.helpplugin"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:section"

    const-string v5, "accessibility"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:appid"

    const-string v5, "accessibility"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1005fd
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_accessibility"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_talkback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_samsung_screen_reader"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_negative"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_greyscale"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_color_adjustment"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_blind_test"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access_control"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_s_talkback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_universal_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    move v0, v2

    :cond_2
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a09c6

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "direct_access"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_4
    return v3

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    const-string v3, "Accessibility"

    const-string v4, "Direct access ON"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_access"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    move v3, v2

    goto :goto_4

    :cond_9
    const-string v4, "Accessibility"

    const-string v5, "Direct access OFF"

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_a
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_interaction"

    if-eqz v1, :cond_b

    :goto_6
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_4

    :cond_b
    move v2, v3

    goto :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "AccessibilitySettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleAutoRotateScreen2ndPreferenceClick()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.callsettings.AnsweringCall"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "FROM_ACCESSIBILITY"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilitySettings"

    const-string v4, "Unable to start callsettings.AnsweringCall"

    invoke-static {v2, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const-class v3, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "com.samsung.helphub"

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1005fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v3, v4}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSettingsScreen()V

    sget-boolean v3, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_reminder_selectable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a0e2d

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_second"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateManageAccessibilityMenu()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->shouldDirectionLockBeDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectionLock:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0a0202

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectionLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a0e2e

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

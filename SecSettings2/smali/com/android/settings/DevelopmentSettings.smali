.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SETTINGS_DB_CALLSTACK_CONDITION_PATH:Ljava/lang/String;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/SwitchPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mMobileKeyboard:Landroid/preference/SwitchPreference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private mProcessStats:Landroid/preference/PreferenceScreen;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsDBCallstack:Landroid/preference/EditTextPreference;

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbBlocked:Z

.field private mUseAwesomePlayer:Landroid/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "262144"

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log_settings_db_callstack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->SETTINGS_DB_CALLSTACK_CONDITION_PATH:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/DevelopmentSettings$3;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mUsbBlocked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    new-instance v0, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0884

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0885

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a079c

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    const/4 v1, 0x0

    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 3

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0a0882

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0883

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAdjustTouchesOptions()V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v5, "debug_view_attributes"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUseNuplayerOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    goto/16 :goto_4

    :cond_8
    move v2, v4

    goto/16 :goto_5

    :cond_9
    move v3, v4

    goto :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0c0b

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    :goto_2
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0c0a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iget-object v11, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v10, v9

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v2

    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    const v8, 0x7f0e0082

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "256K"

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0084

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    move v2, v1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0b7f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0b7e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateSettingsDBCallstackKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSettingsDBCallstack:Landroid/preference/EditTextPreference;

    invoke-static {}, Landroid/provider/Settings$LogMsg;->getCallStackDBKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateShowAdjustTouchesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "hide"

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f0a08e4

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f0a08e0

    invoke-virtual {p0, v8}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateUseNuplayerOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.media.use-awesome"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    :goto_1
    return v4

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2

    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7

    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    return-void

    :cond_1
    sget-object v3, Lcom/android/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2

    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeSettingsDBCallstackKey(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$LogMsg;->setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method private writeShowAdjustTouchesOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2

    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2

    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUseAwesomePlayerOptions()V
    .locals 2

    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "DevelopmentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :try_start_1
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "DevelopmentSettings"

    const-string v1, "Unable to clear adb keys"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isUsbDebuggingEnabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isMockLocationEnabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isKillingActivitiesOnLeaveAllowed"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isBackgroundProcessLimitEnabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v11, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    if-ne v11, v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    if-ne v10, v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v0, 0x1

    if-ne v8, v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    if-ne v9, v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Developer options is enabled"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v8, "no_debugging_features"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v7, 0x7f07002c

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    const-string v7, "debug_debugging_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    const-string v7, "debug_drawing_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    const-string v7, "enable_adb"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_0
    const-string v7, "usb"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/usb/IUsbManager;->isUsbBlocked()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mUsbBlocked:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mUsbBlocked:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v7, "clear_adb_keys"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    const-string v7, "ro.adb.secure"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "enable_terminal"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.terminal"

    invoke-static {v7, v8}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    :cond_5
    const-string v7, "bugreport"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    const-string v7, "bugreport_in_power"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v7, "keep_screen_on"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v7, "bt_hci_snoop_log"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v7, "oem_unlock_enable"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    iput-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    :cond_6
    const-string v7, "allow_mock_location"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v7, "debug_view_attributes"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v7, "local_backup_password"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    :cond_7
    const-string v7, "debug_app"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "wait_for_debugger"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    const-string v7, "verify_apps_over_usb"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v2, :cond_d

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_2
    const-string v7, "strict_mode"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    const-string v7, "pointer_location"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    const-string v7, "show_touches"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    const-string v7, "auto_adjust_screen_tone"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    :cond_9
    const-string v7, "show_screen_updates"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v7, "disable_overlays"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    const-string v7, "show_cpu_usage"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    const-string v7, "force_hw_ui"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v7, "force_msaa"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v7, "track_frame_time"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    const-string v7, "show_non_rect_clip"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    const-string v7, "show_hw_screen_udpates"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v7, "show_hw_layers_udpates"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v7, "debug_layout"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v7, "force_rtl_layout_all_locales"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    const-string v7, "debug_hw_overdraw"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    const-string v7, "wifi_display_certification"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    const-string v7, "wifi_verbose_logging"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    const-string v7, "wifi_aggressive_handover"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    const-string v7, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    const-string v7, "select_logd_size"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    const-string v7, "window_animation_scale"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    const-string v7, "transition_animation_scale"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    const-string v7, "animator_duration_scale"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    const-string v7, "overlay_display_devices"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    const-string v7, "enable_opengl_traces"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    const-string v7, "simulate_color_space"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v7, "use_awesomeplayer"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v7, "usb_audio"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    const-string v7, "immediately_destroy_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "app_process_limit"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const-string v7, "show_all_anrs"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "hdcp_checking"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    :cond_a
    const-string v7, "proc_stats"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "settings_db_callstack"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mSettingsDBCallstack:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mSettingsDBCallstack:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSettingsDBCallstackKey()V

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/settings/DevelopmentSettings;->SETTINGS_DB_CALLSTACK_CONDITION_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "settings_db_callstack"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_3
    const-string v7, "mobile_keyboard"

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mMobileKeyboard:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_c
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mMobileKeyboard:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    iput-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mMobileKeyboard:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v7, "DevelopmentSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to check USB Block State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const-string v7, "settings_db_callstack"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v5, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v4, v3, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v5, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_5

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_6

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_7

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_8

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_9

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_a

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_b

    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mSettingsDBCallstack:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_c

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->writeSettingsDBCallstackKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSettingsDBCallstackKey()V

    goto :goto_0

    :cond_c
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mMobileKeyboard:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_keyboard"

    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_f

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_f
    move v4, v3

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0895

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a0894

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0896

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_d

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_f

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "debug_view_attributes"

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    move v1, v2

    goto :goto_5

    :cond_13
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_14

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/AppPicker;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_15

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_16

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_17

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_18

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_19

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    :cond_19
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAutoAdjustScreenTone:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAdjustTouchesOptions()V

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1b

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1c

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    :cond_1e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1f

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_20

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    :cond_20
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_21

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    :cond_21
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_22

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    :cond_22
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_23

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    :cond_23
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_24

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    :cond_24
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_25

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    :cond_25
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_26

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    :cond_26
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_27

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    :cond_27
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_28

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    :cond_28
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_29

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    :cond_29
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUseAwesomePlayerOptions()V

    goto/16 :goto_0

    :cond_2a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2b

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 14

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020004

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    if-eqz v2, :cond_0

    const v9, 0x7f0a0873

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isDeveloperModeAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v9}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "development_settings_enabled"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v10, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v9}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "development_settings_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v10, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v9}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isUsbDebuggingEnabled"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isMockLocationEnabled"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isKillingActivitiesOnLeaveAllowed"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isBackgroundProcessLimitEnabled"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v7, v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v7, v9, :cond_a

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v6, v9, :cond_b

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v5, v9, :cond_d

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_7
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    goto :goto_9
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v0, 0x5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_3

    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0898

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0897

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Developer options is disabled"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    return-void
.end method

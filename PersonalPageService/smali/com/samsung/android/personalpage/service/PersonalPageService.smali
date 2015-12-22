.class public Lcom/samsung/android/personalpage/service/PersonalPageService;
.super Landroid/app/Service;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;,
        Lcom/samsung/android/personalpage/service/PersonalPageService$H;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field private static final INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

.field private static final INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

.field private static final PRIVATE_MODE_STATUSBAR_SLOT:Ljava/lang/String; = "private_mode"

.field private static final TAG:Ljava/lang/String; = "PersonalPageService"

.field private static isWhiteTheme:Z

.field private static mIsVerificationForNormal:Z

.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private final currentapiVersion:I

.field private isSystemFeatureEnabled:Z

.field private isSystemFeatureQueried:Z

.field private levelPrivatemode:I

.field private mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

.field mAm:Landroid/app/IActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field mDoNotShowCheck:Landroid/widget/CheckBox;

.field final mForegroundToken:Landroid/os/IBinder;

.field final mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

.field private mIsSkipEnableLockScreen:Z

.field private mIsSkipTurnOffToast:Z

.field mLockType:I

.field private mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

.field private mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

.field private mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

.field mPrivateModeDialog:Landroid/app/AlertDialog;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field mStatusBarMgr:Landroid/app/StatusBarManager;

.field private onTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSalesCode:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    sput-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mAm:Landroid/app/IActivityManager;

    iput v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mLockType:I

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$10;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUpdateLocale()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUserSwitch()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/personalpage/service/PersonalPageService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/personalpage/service/PersonalPageService;Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOff(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cleanUp()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeKeepOn()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestLockScreenUnlock()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUpdateLocale()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUserSwitch()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "PersonalPageService"

    const-string v3, "skip cleanUp"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private clearVariables()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->clearNormalM2P()V

    return-void
.end method

.method private collapseStatusBarPanels()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    goto :goto_0
.end method

.method public static getIsWhiteTheme()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    return v0
.end method

.method private declared-synchronized handleChangePrivateMode(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "PersonalPageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleChangePrivateMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsSkipTurnOffToast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->clearVariables()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changePrivateModeStorage(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "sys.samsung.personalpage.mode"

    if-eqz p1, :cond_4

    const-string v2, "1"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    iget-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessageForMode(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_pm_first_mount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_pm_first_mount"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestServcieStop()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->SendPrivateModeSurvery(Z)V

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    const-string v2, "0"

    goto :goto_0

    :cond_5
    const-string v4, "PersonalPageService"

    const-string v5, "handleChangePrivateMode: Failed "

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    if-eqz p1, :cond_7

    const v2, 0x7f050011

    :goto_3
    invoke-static {v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    const v2, 0x7f050005

    goto :goto_3
.end method

.method private declared-synchronized handlePrivateModeKeepOn()V
    .locals 6

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    const-string v1, "sys.samsung.personalpage.mode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VZW"

    sget-object v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeIndicator(Z)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v2, "private_mode"

    const v3, 0x7f02000f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v2, "private_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handlePrivateModeOff(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_pp_disclaimer_noti"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handlePrivateModeOn()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleUpdateLocale()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized handleUserSwitch()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSupportedLockType(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private requestLockScreenUnlock()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "minimum_quality"

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVerifyUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestSelectLockType()V
    .locals 5

    const-string v2, "PersonalPageService"

    const-string v3, "requestSelectLockType()"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalpage.PersonalPageSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "to_select_unlock_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSelectLockType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestServcieStop()V
    .locals 2

    const/16 v1, 0x400

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestUpdateLocale()V
    .locals 2

    const/16 v1, 0x402

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestUserSwitch()V
    .locals 2

    const/16 v1, 0x403

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private declared-synchronized restorePrivatemodeState()V
    .locals 6

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :goto_0
    :try_start_2
    const-string v3, "PersonalPageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorePrivatemodeState : private mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,isPrivateStorageMounted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "sys.samsung.personalpage.mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestServcieStop()V

    const-string v3, "PersonalPageService"

    const-string v4, "restorePrivatemodeState : Restored"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private sendBroadcastForPrivateMode(Z)V
    .locals 5

    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcastForPrivateMode: BEGIN - PrivateMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v2, "PersonalPageService"

    const-string v3, "sendBroadcastForPrivateMode: FINISH"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    goto :goto_1
.end method

.method private setServiceForeGround(Z)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    const-string v1, "PersonalPageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServiceForeGround: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showPrivateModeDialog(Z)V
    .locals 12

    const/4 v11, 0x0

    const v10, 0x104000a

    const/high16 v9, 0x1000000

    const-string v6, "PersonalPageService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showPrivateModeDialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    const-string v6, "PersonalPageService"

    const-string v7, "showPrivateModeDialog: dialogLayout is null!!"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const/high16 v6, 0x7f030000

    invoke-virtual {v1, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f070001

    :try_start_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    sget-boolean v6, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    if-eqz v6, :cond_2

    const/high16 v6, 0x7f070000

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const-string v7, "#000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    new-instance v7, Lcom/samsung/android/personalpage/service/PersonalPageService$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$1;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_5

    const v6, 0x7f050018

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_6

    new-instance v6, Lcom/samsung/android/personalpage/service/PersonalPageService$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$3;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f050017

    new-instance v7, Lcom/samsung/android/personalpage/service/PersonalPageService$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$4;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/samsung/android/personalpage/service/PersonalPageService$9;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$9;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-nez p1, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const v6, 0x7f030001

    invoke-virtual {v1, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f070003

    :try_start_1
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    sget-boolean v6, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    if-eqz v6, :cond_4

    const v6, 0x7f070002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const-string v7, "#000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    new-instance v7, Lcom/samsung/android/personalpage/service/PersonalPageService$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$2;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f050021

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_6
    new-instance v6, Lcom/samsung/android/personalpage/service/PersonalPageService$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$7;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/samsung/android/personalpage/service/PersonalPageService$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$8;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_4
.end method


# virtual methods
.method protected SendPrivateModeSurvery(Z)V
    .locals 12

    const/4 v6, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e8

    const-string v7, "personal_mode_lock_type"

    invoke-static {v0, v7, v10, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    int-to-long v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->sendSurveyLog()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    sub-long v4, v8, v2

    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", onTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",  aliveTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public cancelVerifyByUser()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getNumOfRegisteredClient()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->KillAllClient()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLevelPrivatemode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    return v0
.end method

.method public getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    return-object v0
.end method

.method protected handleM2pKeepMode(Z)V
    .locals 2

    const/16 v1, 0x407

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method declared-synchronized handleVerifyUser(Z)V
    .locals 8

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "personal_mode_lock_type"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v5, "PersonalPageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleVerifyUser, lock_type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", In Normal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestSelectLockType()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSupportedLockType(I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "PersonalPageService"

    const-string v5, "isSupportedLockType is Fail"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    packed-switch v1, :pswitch_data_0

    :try_start_2
    const-string v4, "PersonalPageService"

    const-string v5, "Unknown Lock Type"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/high16 v4, 0x34000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sput-boolean p1, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    const-string v4, "M2P"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "PersonalPageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVerifyUser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPrivateStorageAtLeastMounted()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mBinder:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "PersonalPageService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->initializePrivateModeNoti(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.secretmode_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    iget v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_pp_disclaimer_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_pp_disclaimer_noti_for_lock"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->restorePrivatemodeState()V

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setServiceForeGround(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "PersonalPageService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cleanUp()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onFinishUserVerification()V
    .locals 3

    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangePrivateMode: InNormal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->onVerifiedUser()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPrivateModeOn()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PersonalPageService"

    const-string v3, "started personal page service"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    :cond_1
    const-string v2, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PersonalPageService"

    const-string v3, "onStartCommand: M2P Activating"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->collapseStatusBarPanels()V

    const-string v2, "without_verify"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPersonalPageOff(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPrivateModeOn()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestVerifyUser()V

    goto :goto_0

    :cond_5
    const-string v2, "PersonalPageService"

    const-string v3, "onStartCommand: registerPersonalPageReceiver"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected registerPersonalPageReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public requestPersonalPageOff(Z)V
    .locals 4

    const/16 v3, 0x405

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public requestPrivateModeOn()V
    .locals 2

    const/16 v1, 0x406

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestVerifyUser()V
    .locals 2

    const/16 v1, 0x401

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setPersonalPageServiceActivity(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    return-void
.end method

.method public setPreferences(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method updateSettingDB(I)V
    .locals 3

    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePrivateModeDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

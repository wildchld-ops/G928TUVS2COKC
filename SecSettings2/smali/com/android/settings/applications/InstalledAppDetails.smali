.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

.field private static final SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

.field private static isDisableNotificationDialogVisible:Z

.field private static mIsKNOX3rdpartyApp:Z


# instance fields
.field private getApplicationUninstallationEnabled:I

.field private isSDCardMoveAllowed:I

.field private isStopSystemAppAllowed:I

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsEmerMode:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;

.field final uplusSystemPkgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v4

    const-string v1, "com.android.providers.media"

    aput-object v1, v0, v5

    const-string v1, "com.sprint.w.installer"

    aput-object v1, v0, v6

    const-string v1, "com.sprint.psdg.sw"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sprint.zone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.coremobility.app.vnotes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.locationlabs.v3client"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sprint.dsa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.birdstep.android.cm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sprint.ce.updater"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.telespree.android.client"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.sprextension"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.itsoninc.android.itsonclient"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.itsoninc.android.itsonservice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.itsoninc.android.uid"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.kineto.smartwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.oem.smartwifisupport"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.smithmicro.mnd"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.smithmicro.EDM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.sequent.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.locationlabs.sparkle.yellow.pre"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.bridge"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.bbc.bbcagent"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.knox.rcp.components"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.knox.kss"

    aput-object v1, v0, v6

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.knox.foldercontainer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.knox.packageverifier"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.knox.switchknoxI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.knox.switchknoxII"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.knox.appsupdateagent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.android.irm.service"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.samsung.android.irm.agent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.lguplus.common_api_impl"

    aput-object v1, v0, v3

    const-string v1, "com.lguplus.common.wificm.mwlan"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "com.lguplus.ho_client_impl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.lguplus.andsf_client_impl"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->uplusSystemPkgs:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private applyKioskModePolicy(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkContainerAuthorizedAppOnButtons()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    return-void
.end method

.method private checkContainerRestrictionOnButtons()V
    .locals 13

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sec_container_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v4, v10}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    array-length v7, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    const/4 v6, 0x1

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v10, "InstalledAppDetails"

    const-string v11, "checkContainerRestrictionOnButtons: containerMgr is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v10, "InstalledAppDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecurityException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v10, "InstalledAppDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalStateException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkForceStop()V
    .locals 14

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.sprextension"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.sprextension.phoneinfo"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    sget-object v9, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    array-length v12, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_7

    aget-object v13, v9, v11

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KNOX_PROTECTED_APP_LIST : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.itsoninc.android.itsonclient"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.itsoninc.android.itsonservice"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.itsoninc.android.uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4

    const v3, 0x7f0a1534

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isSystemAppIgnored()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->uplusSystemPkgs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    const-string v1, "com.evernote"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.app.pinboard"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.osp.app.signin"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.facebook.system"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.facebook.appmanager"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const v1, 0x7f0a1535

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    const v3, 0x7f0a079d

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0a07b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_5

    move v0, v3

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0a07d5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0a07d6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0a07d7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_8

    move v2, v3

    :goto_3
    goto :goto_2

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    if-eqz v2, :cond_0

    const-string v2, "InstalledAppDetails"

    const-string v3, " ,,,,,,,,,,,,,,,,LEAVING CHECKBOX AS SUCH & RETURNING, SINCE NOTIFICATION DIALOG IS VISIBLE ,,,,,,,,,,,,,,,,,"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isCustomerRequestPackage()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.fotaclient"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initUninstallButtons()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_c

    const/4 v14, 0x1

    :goto_1
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f0a079f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    const/16 v19, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const/16 v19, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v19, :cond_d

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "InstalledAppDetails"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "disablAppList : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    array-length v15, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_3

    aget-object v6, v8, v13

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->isForbidUninstallAndDisableBtn()Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v11, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v11, 0x0

    :cond_4
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    if-eqz v14, :cond_19

    const/4 v11, 0x0

    :cond_5
    :goto_5
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v18, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v22, "getApplicationUninstallationEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    const/4 v11, 0x0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v15, v8

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v15, :cond_7

    aget-object v16, v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/4 v11, 0x0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    const/16 v20, 0x8

    goto/16 :goto_2

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v11

    :goto_8
    const-string v20, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const-string v20, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    const-string v20, "com.samsung.spg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const/4 v11, 0x0

    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_15

    const-string v20, "InstalledAppDetails"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "disablAppList : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    array-length v15, v8

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v15, :cond_3

    aget-object v6, v8, v13

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const/high16 v21, 0x800000

    and-int v20, v20, v21

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f0a0798

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f0a0798

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    array-length v15, v8

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v15, :cond_3

    aget-object v6, v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const-string v20, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    const/4 v11, 0x0

    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_19
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    const/4 v11, 0x1

    :goto_b
    goto/16 :goto_5

    :cond_1a
    const/4 v11, 0x0

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const/4 v11, 0x1

    :goto_c
    goto/16 :goto_5

    :cond_1c
    const/4 v11, 0x0

    goto :goto_c

    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_1e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6
.end method

.method private initiateClearUserData()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0a07bd

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isCustomerRequestPackage()Z
    .locals 9

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v7, "DCM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_2

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isDisablePkgWithoutUninstall()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "de.telekom.mds.mbp"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isForbidUninstallAndDisableBtn()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.skt.prod.phone"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.skt.prod.dialer"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "InstalledAppDetails"

    const-string v2, "Forbid to uninstall and disable for app."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private isSystemAppIgnored()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.samsung.android.app.watchmanager"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.sidesync30"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.sidesync.source"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0a079d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    if-ne v2, v5, :cond_1

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.android.universalswitch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.universalSwitch.CLEARDATA_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "InstalledAppDetails"

    const-string v4, "Sending Broadcast to Universal Switch"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-ne v1, v5, :cond_1

    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    if-ne v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a127b

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a127a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private refreshButtons()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initNotificationButton()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0a07d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x2

    cmp-long v13, v14, v16

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    :cond_0
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    array-length v11, v2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_10

    aget-object v12, v2, v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v13, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KNOX_PROTECTED_APP_LIST : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v13, v14, v6

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v13, v14, v8

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v13, v14, v4

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v13, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-gtz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v13, v13, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v13, :cond_11

    const-string v13, "com.samsung.aasaservice"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    return-void
.end method

.method private refreshUi()Z
    .locals 55

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v50, v0

    if-eqz v50, :cond_0

    const/16 v50, 0x1

    :goto_0
    return v50

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v50, v0

    if-nez v50, :cond_1

    const/16 v50, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    if-nez v50, :cond_2

    const/16 v50, 0x0

    goto :goto_0

    :cond_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/HashSet;->clear()V

    const/16 v26, 0x0

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v50

    move/from16 v0, v26

    move/from16 v1, v50

    if-ge v0, v1, :cond_4

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    const-string v50, "android.app.home.alternate"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_4
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v50, v0

    if-eqz v50, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v50, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v51

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v50, v0

    const v51, 0x7f10021d

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v50, v0

    const v51, 0x7f10021e

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v50

    if-gtz v50, :cond_6

    if-eqz v24, :cond_9

    :cond_6
    const/4 v15, 0x1

    :goto_3
    if-nez v15, :cond_a

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    if-eqz v50, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    const-string v51, "activity"

    invoke-virtual/range {v50 .. v51}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v50, v0

    const/16 v51, 0x8

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v50, v0

    const v51, 0x7f100225

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    new-instance v13, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    invoke-direct {v13, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v37

    invoke-virtual {v13}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v50

    if-gtz v50, :cond_8

    if-eqz v37, :cond_13

    :cond_8
    const/16 v50, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    const v50, 0x7f100226

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v50, 0x7f100227

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    if-eqz v37, :cond_14

    const/16 v50, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v50, 0x7f100228

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    const v51, 0x7f0e00a1

    const v52, 0x1090008

    invoke-static/range {v50 .. v52}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    const v50, 0x1090009

    move/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    add-int/lit8 v50, v37, -0x1

    move-object/from16 v0, v47

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v50, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_6
    invoke-virtual {v13}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v50

    if-lez v50, :cond_17

    const v50, 0x7f10022a

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    invoke-virtual/range {v43 .. v43}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v13}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v50

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_17

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_17

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    :goto_7
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v26

    move/from16 v1, v50

    if-ge v0, v1, :cond_16

    aget-object v34, v32, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_15

    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :catch_0
    move-exception v22

    const-string v50, "InstalledAppDetails"

    const-string v51, "mUsbManager.hasDefaults"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_a
    if-eqz v23, :cond_f

    if-eqz v15, :cond_f

    const/16 v49, 0x1

    :goto_9
    if-eqz v23, :cond_10

    const v50, 0x7f0a078b

    move-object/from16 v0, v16

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_a
    const/16 v48, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0d009c

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    if-eqz v15, :cond_c

    const v50, 0x7f0a07a0

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v40, Landroid/text/SpannableString;

    move-object/from16 v0, v40

    invoke-direct {v0, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v49, :cond_b

    new-instance v50, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v50

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v51, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v52

    const/16 v53, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    if-nez v48, :cond_11

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v40, v50, v51

    const/16 v51, 0x1

    const-string v52, "\n"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v48

    :cond_c
    :goto_b
    if-eqz v23, :cond_e

    const v50, 0x7f0a07a1

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v40, Landroid/text/SpannableString;

    move-object/from16 v0, v40

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v49, :cond_d

    new-instance v50, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v50

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v51, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v52

    const/16 v53, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    if-nez v48, :cond_12

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v40, v50, v51

    const/16 v51, 0x1

    const-string v52, "\n"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v48

    :cond_e
    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_f
    const/16 v49, 0x0

    goto/16 :goto_9

    :cond_10
    const v50, 0x7f0a078a

    move-object/from16 v0, v16

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    :cond_11
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v48, v50, v51

    const/16 v51, 0x1

    const-string v52, "\n"

    aput-object v52, v50, v51

    const/16 v51, 0x2

    aput-object v40, v50, v51

    const/16 v51, 0x3

    const-string v52, "\n"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v48

    goto/16 :goto_b

    :cond_12
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v48, v50, v51

    const/16 v51, 0x1

    const-string v52, "\n"

    aput-object v52, v50, v51

    const/16 v51, 0x2

    aput-object v40, v50, v51

    const/16 v51, 0x3

    const-string v52, "\n"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v48

    goto :goto_c

    :cond_13
    const/16 v50, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_14
    const/16 v50, 0x8

    move-object/from16 v0, v41

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v50, 0x8

    move-object/from16 v0, v42

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v50

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v50

    goto/16 :goto_8

    :cond_16
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const/16 v50, 0x1

    move/from16 v0, v50

    if-ne v5, v0, :cond_1a

    const/16 v50, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-interface/range {v50 .. v50}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v50, v0

    const v51, 0x7f100229

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v50, 0x7f0a07ca

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    aput-object v11, v51, v52

    move-object/from16 v0, v38

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerAuthorizedAppOnButtons()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v50, v0

    const v51, 0x7f100223

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_1f

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v50

    if-eqz v50, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    if-eqz v50, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    if-lez v50, :cond_1e

    const/16 v50, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v50, 0x7f100224

    move-object/from16 v0, v46

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/LinearLayout;

    const/16 v50, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setSignatureListView(Landroid/widget/LinearLayout;)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Button;->isEnabled()Z

    move-result v50

    if-eqz v50, :cond_18

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v51, v0

    aput-object v51, v44, v50

    const/16 v50, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v51

    aput-object v51, v44, v50

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    const-string v51, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v52, "isApplicationSetToDefault"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const/16 v50, 0x1

    move/from16 v0, v50

    if-ne v12, v0, :cond_20

    const/16 v28, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v51, v0

    if-nez v28, :cond_21

    const/16 v50, 0x1

    :goto_10
    move-object/from16 v0, v51

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v50, v0

    if-nez v50, :cond_23

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v50, v0

    const/high16 v51, 0x800000

    and-int v50, v50, v51

    if-nez v50, :cond_22

    const/16 v50, 0x1

    :goto_11
    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->applyKioskModePolicy(Ljava/lang/String;)V

    const/16 v50, 0x1

    goto/16 :goto_0

    :cond_1a
    const/16 v50, 0x2

    move/from16 v0, v50

    if-ne v5, v0, :cond_1b

    const v50, 0x7f0a07cb

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const/16 v53, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const/16 v53, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, v38

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    :cond_1b
    add-int/lit8 v50, v5, -0x2

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-interface/range {v50 .. v50}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v26, v5, -0x3

    :goto_12
    if-ltz v26, :cond_1d

    if-nez v26, :cond_1c

    const v50, 0x7f0a07cd

    :goto_13
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    aput-object v11, v51, v52

    move-object/from16 v0, v38

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v26, v26, -0x1

    goto :goto_12

    :cond_1c
    const v50, 0x7f0a07ce

    goto :goto_13

    :cond_1d
    const v50, 0x7f0a07cc

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v11, v51, v52

    const/16 v52, 0x1

    add-int/lit8 v53, v5, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, v38

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    :cond_1e
    const/16 v50, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1f
    const/16 v50, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    :cond_20
    const/16 v28, 0x0

    goto/16 :goto_f

    :cond_21
    const/16 v50, 0x0

    goto/16 :goto_10

    :cond_22
    const/16 v50, 0x0

    goto/16 :goto_11

    :cond_23
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x2200

    invoke-virtual/range {v50 .. v52}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v50, v0

    if-nez v50, :cond_19

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v50, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v51, 0x800000

    and-int v50, v50, v51

    if-eqz v50, :cond_24

    const/16 v50, 0x1

    goto/16 :goto_0

    :cond_24
    const/16 v50, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v22

    const/16 v50, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f0a078a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a07a2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v3

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f10006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f100060

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f100061

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f10026a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a07d4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setSignatureListView(Landroid/widget/LinearLayout;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1, v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_2

    const-string v14, "InstalledAppDetails"

    const-string v15, "identities is null."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v14, 0x1090035

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v14, 0x1020349

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10804ca

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v14, 0x1090032

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    const v14, 0x1020343

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v14, 0x1020342

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v5, v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-object v14, v5, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_3
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, -0x777778

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v9, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private showDialogInner(II)V
    .locals 5

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "InstalledAppDetails"

    const-string v3, "Nullpointer exception in showDialogInner"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "InstalledAppDetails"

    const-string v3, "Illegal State exception in showDialogInner"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "isKNOX3rdApp"

    sget-boolean v4, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void

    :catch_0
    move-exception v0

    const-string v3, "InstalledAppDetails"

    const-string v4, "uninstallPkg Couldn\'t start play store activity"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateButtonsForOperator()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .locals 5

    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkKnox(I)V
    .locals 4

    const-string v2, "InstalledAppDetails"

    const-string v3, "checkKnox() start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.containeragent.password_verify_from_Cleandata"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/high16 v2, 0x20000

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "isKNOX3rdApp"

    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "InstalledAppDetails"

    const-string v3, "checkKnox(KNOX_VERIFY_CLEAR_USER_DATA || KNOX_VERIFY_CLEAR_CACHE)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.containeragent.password_verify_from_UninstallApp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/high16 v2, 0x20000

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "InstalledAppDetails"

    const-string v3, "checkKnox(KNOX_VERIFY_UNINSTALL)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v8, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v4, :cond_0

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2200

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const-string v6, "ALDS"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v4, v6}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v8, v8}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v5, 0xb

    if-ne p1, v5, :cond_4

    if-ne p2, v6, :cond_4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_1

    :cond_4
    const/16 v5, 0xc

    if-ne p1, v5, :cond_6

    if-ne p2, v6, :cond_6

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v9}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v8, v7}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_6
    const/16 v5, 0xd

    if-ne p1, v5, :cond_1

    if-ne p2, v6, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_7

    invoke-direct {p0, v9, v7}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_8

    const/4 v4, 0x7

    invoke-direct {p0, v4, v7}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_1

    :cond_8
    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v6, v8, [Ljava/lang/Object;

    check-cast v4, Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_a

    invoke-direct {p0, v2, v8, v7}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, v2, v7, v7}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_4

    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x7

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_6

    const-string v8, "sec_container_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, v4, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_3

    invoke-direct {p0, v11, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v6, v8

    if-nez v6, :cond_5

    invoke-direct {p0, v5, v7, v10}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v5, v10, v10}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablePkgWithoutUninstall()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_8

    invoke-direct {p0, v11, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_8
    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_a

    const/16 v6, 0x9

    invoke-direct {p0, v6, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_b
    const-string v6, "InstalledAppDetails"

    const-string v7, "Failed to enable without uninstall updates."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v10}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f10021d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f10021e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_d
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_10

    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v7, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_13

    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_12

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    :cond_12
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_14

    const/4 v6, 0x5

    invoke-direct {p0, v6, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    :cond_14
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v6, :cond_15

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    :cond_15
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v6, v8

    if-eqz v6, :cond_16

    move v4, v7

    :cond_16
    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "false"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSDCardMoveAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isStopSystemAppAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    new-instance v2, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a0799

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    const v14, 0x7f0400e8

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v14, 0x7f100069

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0a07d1

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    const v14, 0x7f10020b

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    const v14, 0x7f10020d

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    const v14, 0x7f100213

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    const v14, 0x7f100210

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    const v14, 0x7f100216

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    const v14, 0x7f100206

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v14, 0x7f1000b5

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v15, 0x7f0a0792

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    const v14, 0x7f1000b6

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    const v14, 0x7f100207

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const v15, 0x7f1000b5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const v15, 0x7f1000b6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f100217

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v14, 0x7f1000b6

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v14, 0x7f1000b5

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    const/4 v6, 0x0

    move-object v3, v10

    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v13, v3, v7

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v14, "sd"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v6, 0x1

    :cond_0
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    const v14, 0x7f10020e

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f100214

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v14, 0x7f10021b

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    const v14, 0x7f10021c

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const v14, 0x7f10021f

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const v14, 0x7f100220

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const v14, 0x7f100221

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    const v14, 0x7f100222

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    const v14, 0x7f100208

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v12

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    instance-of v5, v3, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    if-eqz v5, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    :goto_0
    const-string v5, "InstalledAppDetails"

    const-string v6, "Destroy"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    return-void

    :cond_1
    :try_start_1
    const-string v5, "InstalledAppDetails"

    const-string v6, "There are no MyAlertDialogFragment"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "InstalledAppDetails"

    const-string v6, "Nullpointer exception in DestroyView"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v5, "InstalledAppDetails"

    const-string v6, "Illegal State exception in DestroyView"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

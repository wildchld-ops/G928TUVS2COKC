.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Landroid/app/Activity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mHM:Landroid/content/IHarmonyEAS;

.field mInstallConfirm:Landroid/view/View;

.field private mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

.field mInstaller:Landroid/content/pm/PackageInstaller;

.field mIsUnknownInstall:Z

.field private mOk:Landroid/widget/Button;

.field private mOkCanInstall:Z

.field private mOriginatingURI:Landroid/net/Uri;

.field private mOriginatingUid:I

.field private mPackageURI:Landroid/net/Uri;

.field private mPkgDigest:Landroid/content/pm/ManifestDigest;

.field mPkgInfo:Landroid/content/pm/PackageInfo;

.field mPm:Landroid/content/pm/PackageManager;

.field private mReferrerURI:Landroid/net/Uri;

.field mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

.field private mSessionId:I

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)Lcom/android/packageinstaller/InstallFlowAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->launchSettingsAppAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .locals 2

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_0

    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHM:Landroid/content/IHarmonyEAS;

    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getOriginatingUid(Landroid/content/Intent;)I
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v10, -0x1

    const-string v11, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSourceInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eq v9, v10, :cond_1

    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v13

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v9, v10, :cond_3

    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v1, v2

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    :try_start_1
    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/2addr v10, v13

    if-nez v10, :cond_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v11, "PackageInstaller"

    const-string v12, "Could not determine the launching uid."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_0

    :cond_3
    move v9, v3

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private getSourceInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initiateInstall()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v3, v1, v5

    if-eqz v3, :cond_0

    aget-object v2, v1, v5

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iput-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v3, v6

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setReplace(Z)V

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setSystemApp(Z)V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void

    :catch_0
    move-exception v0

    iput-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method private isAppVerifierInstalled()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isDisallowInstallUnknownApps()Z
    .locals 4

    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isFromApprovedInstallerForKnox()Z
    .locals 14

    const/4 v10, 0x0

    const-string v11, "persona"

    invoke-virtual {p0, v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->getOriginatingUid(Landroid/content/Intent;)I

    move-result v3

    const-string v11, "PackageInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "original installer uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v11, "PackageInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "given size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v8}, Landroid/os/PersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v11, "PackageInstaller"

    const-string v12, "whitelistedInstallers is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    const-string v11, "PackageInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v10, "PackageInstaller"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got a match for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    move v1, v2

    goto :goto_0
.end method

.method private isInstallingUnknownAppsAllowed()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isFromApprovedInstallerForKnox()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isNewSettingsPkg()Z
    .locals 4

    const-string v0, "/system/priv-app/SecSettings/SecSettings.apk"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private isVerifyAppsEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v2, "ensure_verify_apps"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchSettingsAppAndFinish()V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.packageinstaller.extras.manifest_digest"

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x12000001

    and-int v0, v3, v4

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "sec.android.intent.extra.INSTALL_INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void
.end method

.method private setSignatureListView(Landroid/view/ViewGroup;)V
    .locals 23

    new-instance v15, Landroid/content/pm/PackageParser;

    invoke-direct {v15}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v12, :cond_5

    const/16 v21, 0x0

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v7

    :cond_2
    const/high16 v21, 0x41000000    # 8.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const v21, 0x1090035

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v21, 0x1020349

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10804ca

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v21, 0x1090032

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v21, 0x1020343

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v21, 0x1020342

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v21, v8, v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    aget-object v21, v8, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v8, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    if-nez v4, :cond_4

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    :try_start_1
    const-string v21, "PackageInstaller"

    const-string v22, "setSignatureListView() parsed is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_6
    const-string v21, "PackageInstaller"

    const-string v22, "setSignatureListView() parsed.mSignatures is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    return-void
.end method

.method private startInstallConfirm()V
    .locals 22

    const v20, 0x1020012

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TabHost;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->setup()V

    const v20, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/android/packageinstaller/TabsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/android/packageinstaller/TabsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V

    new-instance v20, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/packageinstaller/TabsAdapter;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v13, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    new-instance v14, Landroid/widget/AppSecurityPermissions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v4

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2

    const v11, 0x7f06000d

    :goto_0
    new-instance v20, Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/CaffeinatedScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v20

    if-lez v20, :cond_3

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setNewPermissionsFound(Z)V

    if-eqz v12, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :goto_2
    const-string v20, "new"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    const v21, 0x7f06003e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    :goto_3
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v6

    if-eqz v6, :cond_6

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v7

    :goto_4
    if-gtz v4, :cond_0

    if-gtz v3, :cond_0

    if-eqz v7, :cond_a

    :cond_0
    const/4 v13, 0x1

    const-string v20, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v20, 0x7f030005

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const v20, 0x7f080014

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    :cond_1
    const v20, 0x7f080015

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setSignatureListView(Landroid/view/ViewGroup;)V

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-lez v4, :cond_8

    const v20, 0x7f080016

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_6
    if-lez v3, :cond_9

    const v20, 0x7f080017

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_7
    const-string v20, "all"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    const v21, 0x7f06003f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v15}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    const/4 v8, 0x0

    :goto_8
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x1020016

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x7f050000

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_2
    const v11, 0x7f06000c

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    const-string v20, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v20, 0x7f030003

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v20, 0x7f060042

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_5
    const v20, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f080006

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    const v20, 0x7f080016

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_9
    const v20, 0x7f080017

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setPermissionsDisplayed(Z)V

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_d

    const v11, 0x7f06000f

    :goto_9
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setAllPermissionsDisplayed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setNewPermissionsDisplayed(Z)V

    const v20, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f080006

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    :cond_b
    if-eqz v11, :cond_c

    const v20, 0x7f080005

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v20, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f060002

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    :goto_a
    return-void

    :cond_d
    const v11, 0x7f06000e

    goto/16 :goto_9

    :cond_e
    const v11, 0x7f06000b

    goto/16 :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/packageinstaller/PackageInstallerActivity$2;

    invoke-direct/range {v21 .. v22}, Lcom/android/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/CaffeinatedScrollView;->setFullScrollAction(Ljava/lang/Runnable;)V

    goto :goto_a
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_b

    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-nez v2, :cond_a

    :cond_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v2}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setInstallButtonClicked()V

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v2, v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinishedWithPackageManagerResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.packageinstaller.applicationInfo"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v2, Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.android.packageinstaller.extras.manifest_digest"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.android.packageinstaller.extras.install_flow_analytics"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v2, :cond_3

    const-string v2, "android.intent.extra.ORIGINATING_URI"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    if-eqz v2, :cond_4

    const-string v2, "android.intent.extra.REFERRER"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    if-eq v2, v5, :cond_5

    const-string v2, "android.intent.extra.ORIGINATING_UID"

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    if-eqz v0, :cond_6

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_7
    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v2, :cond_8

    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaded app uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    if-eqz v2, :cond_9

    :try_start_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Lcom/android/packageinstaller/CaffeinatedScrollView;->pageScroll(I)Z

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(I)V

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    if-eq v2, v5, :cond_c

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    :cond_c
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "PackageInstaller"

    const-string v5, "onCreate(Bundle icicle) getIntent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v4, "android.content.pm.action.CONFIRM_PERMISSIONS"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.content.pm.extra.SESSION_ID"

    const/4 v5, -0x1

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-boolean v4, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    if-eqz v4, :cond_1

    iget-object v4, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in funky state; ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto :goto_0

    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    new-instance v4, Ljava/io/File;

    iget-object v5, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z

    move-result v15

    new-instance v4, Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-direct {v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setContext(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setStartTimestampMillis(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallingUnknownAppsAllowed()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setInstallsFromUnknownSourcesPermitted(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v4, v15}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setInstallRequestFromUnknownSource(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isVerifyAppsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setVerifyAppsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isAppVerifierInstalled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setAppVerifierInstalled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    if-nez v4, :cond_4

    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const-string v4, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v13, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    const-string v4, "android.intent.extra.REFERRER"

    invoke-virtual {v13, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setPackageUri(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    const-string v4, "file"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "package"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    const-string v4, "package"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFileUri(Z)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_6

    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not available. Discontinuing installation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setPackageInfoObtained()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setPackageInfoObtained()V

    const v4, 0x7f030002

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    const v4, 0x7f08000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/high16 v4, 0x7f080000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/packageinstaller/PackageInstallerActivity;->getOriginatingUid(Landroid/content/Intent;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isDisallowInstallUnknownApps()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104086e

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    :cond_7
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsUnknownInstall:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFileUri(Z)V

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v4, "PackageInstaller"

    const-string v5, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v4}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setPackageInfoObtained()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    const/16 v5, 0x1000

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/PackageUserState;

    invoke-direct {v11}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static/range {v3 .. v11}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLandroid/util/ArraySet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    const-string v4, "com.android.packageinstaller.extras.manifest_digest"

    invoke-virtual {v13, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.packageinstaller.extras.manifest_digest"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ManifestDigest;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgDigest:Landroid/content/pm/ManifestDigest;

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v2

    goto/16 :goto_3

    :cond_a
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgDigest:Landroid/content/pm/ManifestDigest;

    goto :goto_5

    :cond_b
    if-eqz v15, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallingUnknownAppsAllowed()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/packageinstaller/PackageUtil;->isAppBlockedByDPM(Landroid/content/Context;Ljava/io/File;)I

    move-result v14

    :cond_c
    const/4 v4, 0x1

    if-eq v4, v14, :cond_d

    const/4 v4, 0x2

    if-ne v4, v14, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104086e

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x3

    if-eq v4, v14, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/packageinstaller/PackageUtil;->isAppInDPMAllowList(Landroid/content/Context;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104086e

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "alertTitle"

    const-string v17, "id"

    const-string v18, "android"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x102000b

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v15, -0x2

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const/4 v15, -0x3

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    const/4 v15, -0x1

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v12

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isNewSettingsPkg()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    const v15, 0x7f070003

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f040002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setTextSize(F)V

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f040003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setTextSize(F)V

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f040003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050003

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v11, v15}, Landroid/widget/Button;->setTextSize(F)V

    :cond_4
    :goto_2
    return-object v5

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isNewSettingsPkg()Z

    move-result v15

    if-eqz v15, :cond_5

    const v14, 0x7f06001d

    :goto_3
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f06001b

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f060006

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f06001f

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const v14, 0x7f06001c

    goto :goto_3

    :pswitch_1
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f06003c

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f06003d

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f06001e

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const v15, 0x7f060027

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f060026

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f060022

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f060006

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const v15, 0x7f060019

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f060010

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f06001e

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    const v15, 0x7f060021

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f060020

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f060006

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$10;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f06001e

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1

    :cond_7
    const-string v15, "PackageInstaller"

    const-string v16, "onCreateDialog() dialog is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method setPmResult(I)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

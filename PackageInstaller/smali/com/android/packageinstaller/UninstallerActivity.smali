.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private localLOGV:Z

.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mIpm:Landroid/content/pm/IPackageManager;

.field private mOk:Landroid/widget/Button;

.field mPm:Landroid/content/pm/PackageManager;

.field private mUninstallFromLauncher:Z

.field private mUninstlalDialog:Landroid/app/AlertDialog;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->localLOGV:Z

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstallFromLauncher:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/UninstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    return-void
.end method

.method private startUninstallProgress()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.UNINSTALL_ALL_USERS"

    iget-boolean v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAllUsers:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.android.packageinstaller.AppName"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_FROM_LAUNCHER"

    iget-boolean v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstallFromLauncher:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v8, "UninstallerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid package URI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v8, "UninstallerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid package name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    const-string v8, "android.intent.extra.USER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    iput-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    if-nez v8, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    :cond_3
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v9, 0x2000

    iget-object v10, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-interface {v8, v5, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v8, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAllUsers:Z

    const-string v8, "fromLauncher"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstallFromLauncher:Z

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mIpm:Landroid/content/pm/IPackageManager;

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    const-string v8, "UninstallerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid packageName or componentName in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DCM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstlalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x20008

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v9, 0x0

    const v13, 0x7f060028

    const v12, 0x1080027

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v7, v9

    :goto_0
    return-object v7

    :pswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f060029

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/packageinstaller/UninstallerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/UninstallerActivity$1;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_1

    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    const v9, 0x7f06003b

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {p0, v9, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f060036

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/packageinstaller/UninstallerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/UninstallerActivity$2;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string v7, "UninstallerActivity"

    const-string v8, "onCreateDialog() mAppinfo is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    move v3, v7

    :goto_1
    const-string v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f06002b

    new-instance v9, Lcom/android/packageinstaller/UninstallerActivity$4;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/UninstallerActivity$4;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f060006

    new-instance v9, Lcom/android/packageinstaller/UninstallerActivity$3;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/UninstallerActivity$3;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    iget-boolean v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstallFromLauncher:Z

    if-nez v7, :cond_2

    if-eqz v3, :cond_7

    const v7, 0x7f06002d

    :goto_3
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstlalDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUninstlalDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    move v3, v8

    goto :goto_1

    :cond_4
    iget-boolean v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAllUsers:Z

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    iget-object v6, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const v9, 0x7f060032

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06002f

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f06002c

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

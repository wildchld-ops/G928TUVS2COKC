.class public Lcom/android/packageinstaller/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private final UNINSTALL_COMPLETE:I

.field private localLOGV:Z

.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppName:Ljava/lang/String;

.field private mDeviceManagerButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mOkPanel:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mResultCode:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->localLOGV:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->UNINSTALL_COMPLETE:I

    new-instance v0, Lcom/android/packageinstaller/UninstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/UninstallAppProgress$1;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static AuditLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x5

    sget-object v1, Lcom/android/packageinstaller/UninstallAppProgress;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v6, "Logging"

    const-string v7, "AuditLog() can\'t get the main context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v6, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "severity"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "group"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "outcome"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "component"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is removed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "message"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uninstall Application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "UninstallAppProgress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AuditLog() e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/UninstallAppProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I
    .locals 0

    iput p1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public initView()V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    move v1, v7

    :goto_0
    if-eqz v1, :cond_1

    const v5, 0x7f06002d

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->setTitle(I)V

    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->setContentView(I)V

    const/high16 v5, 0x7f080000

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v5, v4}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    const v5, 0x7f080012

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v8, 0x7f060034

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f08001e

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/packageinstaller/UninstallAppProgress$2;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/UninstallAppProgress$2;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v5, 0x7f08001b

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v2, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-boolean v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    :goto_2
    invoke-interface {v3, v7, v2, v8, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    move v1, v6

    goto/16 :goto_0

    :cond_1
    const v5, 0x7f06002c

    goto/16 :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "UninstallAppProgress"

    const-string v6, "Failed to talk to package manager"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const-string v0, "UninstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished uninstalling pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/packageinstaller/UninstallAppProgress;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    const-string v3, "com.android.packageinstaller.AppName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only owner user can request uninstall for all users"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    return-void

    :cond_2
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can\'t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request uninstall for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method setResultAndFinish(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    return-void
.end method

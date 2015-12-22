.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.super Landroid/app/Activity;
.source "PersonalPageServiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalPageServiceActivity"


# instance fields
.field protected isM2P:Z

.field protected isVerifySuccess:Z

.field protected isWhiteTheme:Z

.field protected levelPrivatemode:I

.field private mIsBoundService:Z

.field protected mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private rotateState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/16 v0, 0xbb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doBindService()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    return-void
.end method

.method protected doUnbindService()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    :cond_0
    return-void
.end method

.method protected getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method protected hideVirtualKeypad()V
    .locals 4

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected isPortrait()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    iget-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    if-eqz v2, :cond_0

    const v2, 0x7f060006

    invoke-super {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestWindowFeature(I)Z

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doBindService()V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "M2P"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->DisableSystemKey()V

    return-void

    :cond_0
    const v2, 0x7f060005

    invoke-super {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "PersonalPageServiceActivity"

    const-string v3, "==onDestroy=="

    invoke-static {v1, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v3

    if-eq v1, v3, :cond_0

    instance-of v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cancelVerifyByUser()Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doUnbindService()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.personalpage.service"

    const-string v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    return-void

    :cond_4
    const-string v1, "PersonalPageServiceActivity"

    const-string v3, "onDestroy_Skip_cancelVerfiyUser"

    invoke-static {v1, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "PersonalPageServiceActivity"

    const-string v1, "==onStop=="

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "PersonalPageServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected requestPrivateModeOn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->onFinishUserVerification()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    return-void

    :cond_0
    const-string v0, "PersonalPageServiceActivity"

    const-string v1, "PersonalPageService is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mLastOrientation:I

.field private mLastToast:Landroid/widget/Toast;

.field private mSystemKeysRequested:Z

.field private mWindowmanager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    return-void
.end method

.method private checkAndShowWindowPinnedMsg()Z
    .locals 9

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    const-string v5, "WifiPickerDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndShowWindowPinnedMsg() -:- isWindowPinned ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "tw_lock_to_app_toast_accessible"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_1
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "tw_lock_to_app_toast"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "lock_to_app_toast_accessible"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "lock_to_app_toast"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mSystemKeysRequested:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/16 v3, 0xbb

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/16 v3, 0x105

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "WifiPickerDialog"

    const-string v3, "problem caught in requesting for system key event."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const v3, 0x7f040254

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v3, 0x7f0a032b

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setEnableShadow(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :catch_0
    move-exception v2

    const-string v3, "WifiPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x105

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->checkAndShowWindowPinnedMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiPickerDialog"

    const-string v1, "key consumed when window is pinned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mSystemKeysRequested:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mSystemKeysRequested:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V

    :cond_0
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

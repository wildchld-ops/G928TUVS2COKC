.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDisconnectBtn:Landroid/widget/Button;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWfdTitle:Landroid/widget/TextView;

.field mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private IsRunningIpRemoteDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method changeEndConnection()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->IsRunningIpRemoteDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    const-string v6, "display"

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f040212

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f10048a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v6, 0x7f10008d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->IsRunningIpRemoteDisplay()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v7, 0x7f0a0faa

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a0fb7

    new-instance v7, Lcom/android/settings/wfd/WfdPickerDialog$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wfd/WfdPickerDialog$1;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v6, 0x7f0a0166

    new-instance v7, Lcom/android/settings/wfd/WfdPickerDialog$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wfd/WfdPickerDialog$2;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f040211

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f100489

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v6, Lcom/android/settings/wfd/WfdPickerDialog$3;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog$3;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v6, Lcom/android/settings/wfd/WfdPickerDialog$4;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog$4;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v7, 0x7f0a0fab

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeEndConnection()V

    return-void
.end method

.method requestToastPopup()V
    .locals 2

    const v0, 0x7f0a0fb9

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

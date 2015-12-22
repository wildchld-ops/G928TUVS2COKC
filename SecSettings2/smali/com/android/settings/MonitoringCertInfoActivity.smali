.class public Lcom/android/settings/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private hasDeviceOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0cec

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    iget-boolean v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0ced

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0ceb

    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v5, Lcom/android/settings/MonitoringCertInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/MonitoringCertInfoActivity$1;-><init>(Lcom/android/settings/MonitoringCertInfoActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0cee

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0cef

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.class public Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingIntCallDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "RoamingIntCallDialog"

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onBackPressed()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onCreate()..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->getIntent()Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$1;-><init>(Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;)V

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$2;-><init>(Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "setupAlert"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onPause()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onResume()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onStop()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->finish()V

    return-void
.end method

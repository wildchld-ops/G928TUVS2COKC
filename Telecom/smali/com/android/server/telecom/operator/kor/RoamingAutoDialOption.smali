.class public Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;
.super Landroid/app/Activity;
.source "RoamingAutoDialOption.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRoamingAutoDialDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "RoamingAutoDialOption"

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onCreate()..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_rad_original_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    const-string v0, "RoamingAutoDialOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->showRoamingAutoDialDialog()V

    return-void
.end method

.method public showRoamingAutoDialDialog()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "showRoamingAutoDialDialog()"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070001

    new-instance v2, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$3;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$3;-><init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;-><init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;-><init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mRoamingAutoDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

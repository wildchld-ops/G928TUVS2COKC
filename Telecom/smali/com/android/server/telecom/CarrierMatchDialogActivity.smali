.class public Lcom/android/server/telecom/CarrierMatchDialogActivity;
.super Landroid/app/Activity;
.source "CarrierMatchDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCarrierName:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mNewSim:I

.field private mOldSim:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mNewSim:I

    iput v1, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mOldSim:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/CarrierMatchDialogActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/CarrierMatchDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mOldSim:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/CarrierMatchDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mNewSim:I

    return v0
.end method

.method private showCarrierMatchDialog()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "carrier_match_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "carrier_match_smartcsp"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800a1

    new-instance v5, Lcom/android/server/telecom/CarrierMatchDialogActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/CarrierMatchDialogActivity$4;-><init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800a3

    new-instance v5, Lcom/android/server/telecom/CarrierMatchDialogActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/CarrierMatchDialogActivity$3;-><init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800a2

    new-instance v5, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/CarrierMatchDialogActivity$2;-><init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/server/telecom/CarrierMatchDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity$1;-><init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0800a4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/server/telecom/CarrierMatchDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity$5;-><init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "extra_carrier_match_call_intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_new_sim"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mNewSim:I

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_old_sim"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mOldSim:I

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_carrier_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->showCarrierMatchDialog()V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/telecom/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bundle or intent is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFinishing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

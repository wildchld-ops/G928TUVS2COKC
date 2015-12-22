.class public Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
.super Landroid/app/Activity;
.source "AcceptCallDialogActivity.java"


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field final mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;-><init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$2;-><init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$3;-><init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getNumber(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Ljava/lang/String;)J
    .locals 2
    .param p0    # Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getAutoRejectedCallNumberId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;J)V
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->deleteAutoRejectNumber(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteAutoRejectNumber(J)V
    .locals 5
    .param p1    # J

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAutoRejectedCallNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "extra_auto_reject_call_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "extra_auto_reject_call_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private getAutoRejectedCallNumberId(Ljava/lang/String;)J
    .locals 12
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-wide v8, v10

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v8

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private getNumber(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private showAcceptCallDialog(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;-><init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Ljava/lang/String;)V

    new-instance v1, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$5;-><init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a070c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a070d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->getAutoRejectedCallNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->showAcceptCallDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

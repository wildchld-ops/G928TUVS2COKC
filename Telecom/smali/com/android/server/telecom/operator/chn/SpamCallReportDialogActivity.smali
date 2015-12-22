.class public Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;
.super Landroid/app/Activity;
.source "SpamCallReportDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppSwitchReceiver:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

.field private mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

.field private mSelectItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I

    new-instance v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mSelectItem:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mNumMarkTypeConstant:Lcom/bst/spamcall/numbermark/NumMarkTypeConstant;

    return-object v0
.end method

.method private showSpamCallReportDialog(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "showSpamCallReportDialog called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070002

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$3;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800bd

    new-instance v2, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$2;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "SpamCallReportDialogActivity called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->showSpamCallReportDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

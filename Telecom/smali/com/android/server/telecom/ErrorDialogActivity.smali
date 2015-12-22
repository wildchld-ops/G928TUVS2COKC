.class public Lcom/android/server/telecom/ErrorDialogActivity;
.super Landroid/app/Activity;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;,
        Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;,
        Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppSwitchReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;Lcom/android/server/telecom/ErrorDialogActivity$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;Lcom/android/server/telecom/ErrorDialogActivity$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finishActivityWhenAirplanemodeOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/ErrorDialogActivity;)Lcom/android/server/telecom/secutils/ErrorDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    return-object v0
.end method

.method private addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private finishActivityWhenAirplanemodeOff()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "isAirplaneModeOff"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    invoke-direct {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->unRegisterCoverStateListener()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private registerCoverStateListener()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v0, Lcom/android/server/telecom/ErrorDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/ErrorDialogActivity$4;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method

.method private showGenericErrorDialog(I)V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "showGenericErrorDialog"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeRtsMEssage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/server/telecom/ErrorDialogActivity$GenericErrorDialog;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "SERR"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/telecom/wearable/BluetoothVendorCommand;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showMissingVoicemailErrorDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/telecom/ErrorDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/ErrorDialogActivity$3;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080021

    new-instance v2, Lcom/android/server/telecom/ErrorDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/ErrorDialogActivity$2;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/ErrorDialogActivity$1;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private unRegisterCoverStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->overridePendingTransition(II)V

    invoke-direct {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->unRegisterCoverStateListener()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x3e7

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_missing_voicemail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error_message_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "ErrorDialogActivity called with no error type extra."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->isSpecificErrorDialog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->showSpecificErrorDialog(I)V

    const v1, 0x7f080024

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "error == R.string.incall_error_power_off"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->registerCoverStateListener()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AirplaneModeChangeBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mAppSwitchReceiver:Lcom/android/server/telecom/ErrorDialogActivity$AppSwitchKeyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

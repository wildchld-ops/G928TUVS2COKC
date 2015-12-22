.class public Lcom/android/settings/DeviceWipe;
.super Landroid/app/Fragment;
.source "DeviceWipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceWipe$4;,
        Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;,
        Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;,
        Lcom/android/settings/DeviceWipe$PWState;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;


# instance fields
.field private isFirstResume:Z

.field private isWiFiEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/DeviceWipe$PWState;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mRestoreApnProcessHandler:Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DeviceWipe;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget-object v0, Lcom/android/settings/DeviceWipe$PWState;->CURRENT:Lcom/android/settings/DeviceWipe$PWState;

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mPWState:Lcom/android/settings/DeviceWipe$PWState;

    new-instance v0, Lcom/android/settings/DeviceWipe$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceWipe$1;-><init>(Lcom/android/settings/DeviceWipe;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DeviceWipe$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceWipe$2;-><init>(Lcom/android/settings/DeviceWipe;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/android/settings/DeviceWipe$4;->$SwitchMap$com$android$settings$DeviceWipe$PWState:[I

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mPWState:Lcom/android/settings/DeviceWipe$PWState;

    invoke-virtual {v1}, Lcom/android/settings/DeviceWipe$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mNewPassword:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/DeviceWipe$PWState;->CONFIRM:Lcom/android/settings/DeviceWipe$PWState;

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mPWState:Lcom/android/settings/DeviceWipe$PWState;

    const v0, 0x7f0a1221

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1223

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceWipe;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/DeviceWipe;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/DeviceWipe$PWState;->CURRENT:Lcom/android/settings/DeviceWipe$PWState;

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mPWState:Lcom/android/settings/DeviceWipe$PWState;

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/DeviceWipe;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->doNetworkReset()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    const v3, 0x7f0a1221

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/DeviceWipe$PWState;->NEW:Lcom/android/settings/DeviceWipe$PWState;

    iput-object v1, p0, Lcom/android/settings/DeviceWipe;->mPWState:Lcom/android/settings/DeviceWipe$PWState;

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1220

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a1224

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/DeviceWipe;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1223

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceWipe;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/DeviceWipe;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceWipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DeviceWipe;->isFirstResume:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/DeviceWipe;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/DeviceWipe;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DeviceWipe;->isFirstResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceWipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/DeviceWipe;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceWipe;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DeviceWipe;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DeviceWipe;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceWipe;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/DeviceWipe;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->StartPassword()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DeviceWipe;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->doNetworkReset()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DeviceWipe;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doNetworkReset()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->getProgressDialog()Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/DeviceWipe;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/DeviceWipe$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceWipe$3;-><init>(Lcom/android/settings/DeviceWipe;)V

    iput-object v1, p0, Lcom/android/settings/DeviceWipe;->mRemoveProgress:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/DeviceWipe;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->restoreDefaultApn()Z

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mContentView:Landroid/view/View;

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0ebd

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a06d4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnUiHandler:Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;-><init>(Lcom/android/settings/DeviceWipe;Lcom/android/settings/DeviceWipe$1;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnUiHandler:Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnProcessHandler:Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnUiHandler:Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;-><init>(Lcom/android/settings/DeviceWipe;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnProcessHandler:Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mRestoreApnProcessHandler:Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceWipe$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v3
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 v2, 0x0

    const v3, 0x7f0a06cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/settings/DeviceWipe;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/16 v0, 0x37

    if-eq p1, v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->doNetworkReset()V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->doNetworkReset()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04008c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceWipe;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/DeviceWipe;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceWipe;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceWipe;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DeviceWipe;->isFirstResume:Z

    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p4}, Lcom/android/settings/DeviceWipe;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

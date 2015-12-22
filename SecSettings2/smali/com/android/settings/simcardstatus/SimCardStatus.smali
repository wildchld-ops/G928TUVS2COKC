.class public Lcom/android/settings/simcardstatus/SimCardStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimCardStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/simcardstatus/SamsungRilConnector$IOnRilJobListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRebootDialog:Landroid/app/AlertDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

.field private mSimCode:Ljava/lang/String;

.field private mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

.field private mSimState:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdateDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/simcardstatus/SimCardStatus$5;

    invoke-direct {v0}, Lcom/android/settings/simcardstatus/SimCardStatus$5;-><init>()V

    sput-object v0, Lcom/android/settings/simcardstatus/SimCardStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/simcardstatus/SimCardStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/simcardstatus/SimCardStatus$1;-><init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->updateSimStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/simcardstatus/SimCardStatus;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/simcardstatus/SimCardStatus;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->rebootDevice()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/simcardstatus/SimCardStatus;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/simcardstatus/SimCardStatus;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/simcardstatus/SimCardStatus;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/simcardstatus/SimCardStatus;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V

    return-void
.end method

.method private getSimStateString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a15ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "-"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "READY"

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a15cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "UNKNOWN"

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0a15cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isUpdateAvailable()Z
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string v3, "SimCardStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    const-string v3, "READY"

    iget-object v4, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private rebootDevice()V
    .locals 4

    const-string v1, "SimCardStatus"

    const-string v2, "Device reboot!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/simcardstatus/SimCardStatus$2;

    invoke-direct {v1, p0}, Lcom/android/settings/simcardstatus/SimCardStatus$2;-><init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSimStatus()V
    .locals 3

    invoke-static {}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->getSimLockStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->getOperationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimCode:Ljava/lang/String;

    const-string v0, "SimCardStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimStatus() => mSimState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sim_state_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->getSimStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "sim_state_code"

    invoke-virtual {p0, v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->isUpdateAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/simcardstatus/SimStatusUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;-><init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    const-string v0, "SimCardStatus"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUnknown:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0a15d8

    const v5, 0x7f0a15d0

    const v4, 0x104000a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0f8c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a15d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a15d2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a15d4

    new-instance v4, Lcom/android/settings/simcardstatus/SimCardStatus$3;

    invoke-direct {v4, p0}, Lcom/android/settings/simcardstatus/SimCardStatus$3;-><init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a15d3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a15d1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a15d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a15d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/simcardstatus/SimCardStatus$4;

    invoke-direct {v1, p0}, Lcom/android/settings/simcardstatus/SimCardStatus$4;-><init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRebootDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRebootDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0401cc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/android/settings/simcardstatus/SamsungRilConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {v1, p0}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->setOnRilJobListener(Lcom/android/settings/simcardstatus/SamsungRilConnector$IOnRilJobListener;)V

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->connect()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mSamsungRilConnector:Lcom/android/settings/simcardstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->disconnect()V

    :cond_0
    return-void
.end method

.method public onGetBlobFinished(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SimCardStatus"

    const-string v1, "onGetBlobRequestFinished()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "SimCardStatus"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRebootDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus;->mRebootDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->rebootDevice()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SimCardStatus"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/simcardstatus/SimCardStatus;->updateSimStatus()V

    return-void
.end method

.method public onSetBlobFinished(Z)V
    .locals 3

    const-string v0, "SimCardStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetBlobRequestFinished() => bSucceed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V

    goto :goto_0
.end method

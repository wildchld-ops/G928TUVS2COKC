.class public Lcom/android/systemui/qs/tiles/SmartPauseTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SmartPauseTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_SMART_PAUSE_ON:Ljava/lang/String; = "smart_pause"

.field private static final TAG:Ljava/lang/String; = "SmartPauseTile"


# instance fields
.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mIsProcessing:Z

.field private mMasterState:Z

.field private mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "smart_pause"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "motion_merged_mute_pause"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getMasterMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    iput v3, v0, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    const v3, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    const/4 v1, 0x3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SmartPauseTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getMasterMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getSmartPauseMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f020801

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020802

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020800

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSmartPauseMode(I)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "SmartPauseTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set S.P.M - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 7

    const/16 v6, 0x7d8

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0407

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/SmartPauseTile$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile$3;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public doNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->removeEnabledScreenReaderValue()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->setSmartPauseMode(I)V

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method protected handleClick()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v2, v4

    :goto_0
    const-string v6, "SmartPauseTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_2

    const-string v3, "SmartPauseTile"

    const-string v4, "handleClick(): state change is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    if-nez v3, :cond_3

    const-string v3, "SmartPauseTile"

    const-string v4, "!mMasterState"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->showConfirmPopup()V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    if-eqz v3, :cond_4

    const-string v3, "SmartPauseTile"

    const-string v4, "Processing..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->isEnabledScreenReaderService()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0d04ce

    const v4, 0x7f0d04cf

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    if-eqz v2, :cond_6

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->setSmartPauseMode(I)V

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    :cond_1
    return-void
.end method

.method protected handleLongClick()V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "SmartPauseTile"

    const-string v4, "handleLongClick"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_0

    const-string v3, "SmartPauseTile"

    const-string v4, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v3, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SMotionGuideHub2014Activity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    const-string v4, "merged_mute_or_pause"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "AdvancedSettingsIsTop"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03a7

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    :cond_1
    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/SBeamTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SBeamTile.java"


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
.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final TAG:Ljava/lang/String; = "SBeamTile"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsProcessing:Z

.field private mSBeamState:Z

.field private final mSettingSB:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8

    const/4 v2, 0x2

    const/4 v7, -0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SBeamTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "sbeam_mode"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/SBeamTile$1;-><init>(Lcom/android/systemui/qs/tiles/SBeamTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    invoke-static {v0, v4, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    invoke-static {v0, v4, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SBeamTile;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SBeamTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SBeamTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    return p1
.end method

.method private getMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207f3

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
    const v0, 0x7f0207f4

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0207f2

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

.method private setMode(I)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "turn_on"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 12

    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    if-eqz v9, :cond_1

    const-string v9, "SBeamTile"

    const-string v10, "onClick(): Processing..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SBeam onClick("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "true"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isNFCEnabledWithMsg"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isAndroidBeamAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSBeamAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiEnabled"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiDirectAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v11, "isNFCStateChangeAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const-string v9, "SBeamTile"

    const-string v10, "onClick(): SBeam state change is not allowed by EDM"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Turning ON SBeam mSBeamState:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",mState.value:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Turning OFF mSBeamState:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",mState.value:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, -0x1

    const-string v10, "SBeamTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleLongClick : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v9, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v9, v9, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v14, [Ljava/lang/String;

    const-string v9, "true"

    aput-object v9, v8, v13

    new-array v7, v14, [Ljava/lang/String;

    const-string v9, "false"

    aput-object v9, v7, v13

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v11, "isNFCEnabledWithMsg"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isAndroidBeamAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSBeamAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiEnabled"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiDirectAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v11, "isNFCStateChangeAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-eq v4, v12, :cond_1

    if-eq v1, v12, :cond_1

    if-eq v0, v12, :cond_1

    if-eq v5, v12, :cond_1

    if-eq v6, v12, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v3, v12, :cond_1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v9, "SBeamTile"

    const-string v10, "onLongClick(): setting access is not allowed by EDM"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$SBeamSettingsActivity"

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/tiles/SBeamTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03ae

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method

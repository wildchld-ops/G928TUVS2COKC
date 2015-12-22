.class public Lcom/android/systemui/qs/tiles/SyncTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SyncTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "SyncTile"


# instance fields
.field private mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProcessing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/SyncTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203a1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203a0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SyncTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SyncTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SyncTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f02080e

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0

    :cond_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f02080f

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_2
    const v0, 0x7f02080d

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected handleClick()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    move v0, v5

    :goto_0
    const-string v4, "SyncTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-nez v1, :cond_2

    const-string v4, "SyncTile"

    const-string v5, "handleClick(): Sync state change is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z

    if-eqz v4, :cond_3

    const-string v4, "SyncTile"

    const-string v5, "handleClick(): Processing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    :cond_4
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    new-instance v4, Lcom/android/systemui/qs/tiles/SyncTile$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/systemui/qs/tiles/SyncTile$2;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;ZZ)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tiles/SyncTile$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 6

    const-string v3, "SyncTile"

    const-string v4, "handleLongClick()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_0

    const-string v3, "SyncTile"

    const-string v4, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$AccountSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03a4

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->makeContentDescription(II)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SyncTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;,
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201b5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201b3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    return-object v0
.end method

.method private static newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    const-class v1, Lcom/android/systemui/qs/tiles/HotspotTile;

    const v2, 0x7f0f0046

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0587

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-object v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/UsageTracker;->showResetConfirmation(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isProvisioningNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_1
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    goto :goto_0
.end method

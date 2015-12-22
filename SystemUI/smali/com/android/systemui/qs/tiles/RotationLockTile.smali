.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201f6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201f4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201c0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0201be

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getAccessibilityString(ZIII)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    move v1, p2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p4

    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f0d02e2

    const v2, 0x7f0d02e1

    const v3, 0x7f0d02e0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_2
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v3, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    :goto_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v4, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v2, 0x1

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    const v1, 0x7f0d0306

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_5
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const v5, 0x7f0d02df

    const v6, 0x7f0d02de

    const v7, 0x7f0d02dd

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v3

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_3

    :cond_4
    const v1, 0x7f0d0307

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_5

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0304

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_6
    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_6
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method

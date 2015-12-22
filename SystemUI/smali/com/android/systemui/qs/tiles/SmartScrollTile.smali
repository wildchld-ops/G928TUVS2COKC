.class public Lcom/android/systemui/qs/tiles/SmartScrollTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SmartScrollTile.java"


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
.field private static final DB_FACE_SMART_SCROLL:Ljava/lang/String; = "face_smart_scroll"

.field private static final DB_SMART_SCROLL_ON:Ljava/lang/String; = "smart_scroll"

.field private static final TW_TAG:Ljava/lang/String; = "SmartScrollTile"


# instance fields
.field private mButtonStatus:I

.field private mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mFaceState:Z

.field private mIsProcessing:Z

.field private mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mSmartState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    iput v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    new-instance v0, Lcom/android/systemui/qs/tiles/SmartScrollTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "smart_scroll"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile$1;-><init>(Lcom/android/systemui/qs/tiles/SmartScrollTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "face_smart_scroll"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;-><init>(Lcom/android/systemui/qs/tiles/SmartScrollTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SmartScrollTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/SmartScrollTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SmartScrollTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SmartScrollTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SmartScrollTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f020804

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
    const v0, 0x7f020805

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020803

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

.method private init()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iput v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private updateButtonStatus()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    return-void

    :cond_0
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    const-string v1, "SmartScrollTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->removeEnabledScreenReaderValue()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateStatus()V

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method protected handleClick()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_0

    move v1, v3

    :goto_0
    const-string v2, "SmartScrollTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_1

    const-string v2, "SmartScrollTile"

    const-string v3, "handleClick(): SmartScroll state change is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartScrollTile"

    const-string v3, "handleClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v2, v3, :cond_4

    iput v7, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateStatus()V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->isEnabledScreenReaderService()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0d04d0

    const v3, 0x7f0d04d1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v2, v7, :cond_3

    iput v4, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->TAG:Ljava/lang/String;

    const-string v2, "handleLongClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SmartScrollAdvancedSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SmartScrollTile"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03a3

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f020809

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const/4 v1, 0x2

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method

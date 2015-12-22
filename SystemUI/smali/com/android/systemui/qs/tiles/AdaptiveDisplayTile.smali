.class public Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AdaptiveDisplayTile.java"


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
.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayTile"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayState:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSettingAD:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "screen_mode_automatic_setting"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;-><init>(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mSettingAD:Lcom/android/systemui/qs/SystemSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mSettingAD:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->getAdaptiveDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->getAdaptiveDisplayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->getAdaptiveDisplayEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z

    return p1
.end method

.method private getAdaptiveDisplayEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAdaptiveDisplayEnabled(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x2

    const-string v3, "AdaptiveDisplayTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAdaptiveDisplayEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z

    if-eq v3, p1, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mAdaptiveDisplayForVZW:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_mode_automatic_setting"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v1, v3, v2, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "com.samsung.settings"

    const-string v2, "com.samsung.settings.ModePreviewTablet"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected handleClick()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "AdaptiveDisplayTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick() value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->setAdaptiveDisplayEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mSettingAD:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 3

    const-string v1, "AdaptiveDisplayTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick() value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.settings.ModePreviewTablet"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->startSettingsActivity(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.samsung.settings.NewModePreview"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7

    const v6, 0x7f0d0388

    const/4 v3, 0x0

    const v5, 0x7f0d03a8

    const/4 v2, 0x1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03cd

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_mode_automatic_setting"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f020787

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0387

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f020786

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f020785

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected makeContentDescription(II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mSettingAD:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method

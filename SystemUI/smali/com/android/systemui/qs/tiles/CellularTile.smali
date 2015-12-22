.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CELLULAR_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CellularTile$1;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 9

    const v5, 0x7f02021a

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v6, :cond_2

    move v2, v5

    :goto_1
    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-nez v6, :cond_6

    move v6, v7

    :goto_2
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->autoMirrorDrawable:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_7

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    :goto_3
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-eq v2, v5, :cond_8

    move v5, v7

    :goto_4
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    if-eqz v5, :cond_9

    move v5, v7

    :goto_5
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    if-eqz v5, :cond_a

    move v5, v7

    :goto_6
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_c

    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_c

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    :goto_8
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_d

    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v5, :cond_d

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    if-nez v5, :cond_d

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    :goto_9
    const v5, 0x7f0d02ae

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v1, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v6, :cond_4

    :cond_3
    const v2, 0x7f02022b

    goto :goto_1

    :cond_4
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v6, :cond_5

    iget v2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    goto/16 :goto_1

    :cond_5
    const v2, 0x7f020236

    goto/16 :goto_1

    :cond_6
    move v6, v8

    goto :goto_2

    :cond_7
    move v6, v8

    goto :goto_3

    :cond_8
    move v5, v8

    goto :goto_4

    :cond_9
    move v5, v8

    goto :goto_5

    :cond_a
    move v5, v8

    goto :goto_6

    :cond_b
    const v5, 0x7f0d030d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_c
    const v5, 0x7f0d027f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    const v5, 0x7f0d026d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

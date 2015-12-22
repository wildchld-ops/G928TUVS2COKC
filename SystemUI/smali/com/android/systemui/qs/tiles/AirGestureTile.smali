.class public Lcom/android/systemui/qs/tiles/AirGestureTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirGestureTile.java"


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
.field private static final DB_AIR_GESTURE:Ljava/lang/String; = "air_motion_engine"

.field private static final TAG:Ljava/lang/String; = "AirGestureTile"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGestureState:Z

.field private mIsProcessing:Z

.field private final mSettingAG:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const-string v0, "AirGestureTile"

    const-string v2, "Creating AirGesture Constructor: "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/qs/tiles/AirGestureTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "air_motion_engine"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/AirGestureTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirGestureTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirGestureTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AirGestureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/AirGestureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirGestureTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f020789

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
    const v0, 0x7f02078a

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020788

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

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 8

    const/16 v7, 0x7d8

    const/4 v3, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03eb

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/AirGestureTile$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirGestureTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/AirGestureTile$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirGestureTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public doNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->removeEnabledScreenReaderValue()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method protected handleClick()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v1, v3

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    if-eqz v2, :cond_2

    const-string v2, "AirGestureTile"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6}, Lcom/android/systemui/qs/tiles/AirGestureTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_3

    const-string v2, "AirGestureTile"

    const-string v3, "onClick(): AirGesture state change is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    if-eq v2, v1, :cond_0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isEnabledScreenReaderService()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x7f0d04c8

    const v3, 0x7f0d04c9

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/AirGestureTile;->setMode(I)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 3

    const-string v1, "AirGestureTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d03a9

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0389

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_clip"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    or-int v8, v5, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v0

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method

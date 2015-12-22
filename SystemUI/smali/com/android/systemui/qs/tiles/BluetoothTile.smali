.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BluetoothTile.java"


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
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "BluetoothTile"

.field private static mIsProcessing:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$2;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBluetoothState(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBluetoothState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method private getBluetoothState(I)I
    .locals 6

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "BluetoothTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getBluetoothState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    move v0, v2

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sput-boolean v2, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f02079b

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
    const v0, 0x7f02079c

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02079a

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
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x5

    const/4 v2, 0x1

    const-string v3, "BluetoothTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mIsProcessing : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v2, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v1, v8, v10

    new-array v9, v2, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v9, v10

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v4, "isBluetoothEnabledWithMsg"

    invoke-static {v1, v3, v4, v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v1, v3, v4, v8}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_2

    if-eq v6, v5, :cond_2

    if-eqz v7, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const-string v0, "BluetoothTile"

    const-string v1, "onClick(): Bluetooth state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_3
    const-string v0, "BluetoothTile"

    const-string v1, "handleClick : no opertaion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v11, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothTile"

    const-string v3, "handleClick : mBluetoothAdapter.enable()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V

    sput-boolean v2, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Bluetooth"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothTile"

    const-string v3, "handleClick : mBluetoothAdapter.disable()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState(Ljava/lang/Object;)V

    sput-boolean v2, Lcom/android/systemui/qs/tiles/BluetoothTile;->mIsProcessing:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling Bluetooth"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method public handleLongClick()V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v4, "BluetoothTile"

    const-string v5, "handleLongClick "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v6, "isBluetoothEnabledWithMsg"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v7, :cond_1

    if-eq v0, v7, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v4, "BluetoothTile"

    const-string v5, "handleLongClick(): setting menu is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/BluetoothTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0d038e

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textEllipsis:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d03b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0d0387

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    const-string v2, "BluetoothTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleUpdatestate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textEllipsis:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0d0388

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v2, 0x7f0d0389

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.class final Lcom/android/server/telecom/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TtyManager$1;,
        Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTtyMode:I

.field private mPreferredTtyMode:I

.field private final mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/server/telecom/TtyManager;Lcom/android/server/telecom/TtyManager$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/TtyManager;->mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    iput v2, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    iput v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    iput-object p1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/TtyManager;->mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TtyManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/telecom/TtyManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TtyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    return-void
.end method

.method private updateAudioTtyMode()V
    .locals 4

    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "tty_off"

    move-object v1, v0

    :goto_0
    const-string v0, "updateAudioTtyMode, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "tty_full"

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    const-string v0, "tty_vco"

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    const-string v0, "tty_hco"

    move-object v1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateCurrentTtyMode()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    :goto_0
    const-string v2, "updateCurrentTtyMode, %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateAudioTtyMode()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updateCurrentTtyModeToDefault()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput v4, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    :cond_0
    const-string v0, "updateCurrentTtyModeToDefault, %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    if-eq v0, v4, :cond_1

    iput v4, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateAudioTtyMode()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentTtyMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getCurrentTtyMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    return v0
.end method

.method isTtySupported()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tty_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "isTtySupported: %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onWiredHeadsetPluggedInChanged(ZZ)V
    .locals 2

    const-string v0, "onWiredHeadsetPluggedInChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "tty_to_default_wired_headset_plugged_out"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyModeToDefault()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    goto :goto_0
.end method

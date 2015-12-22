.class public Lcom/android/systemui/qs/tiles/SilentModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SilentModeTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeTile"

.field private static mDeviceSoundProfile:I

.field private static mDeviceSoundProfilePrevious:I

.field private static mDiagnosticLogs:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTextID:I

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    return-void

    :cond_0
    const-string v0, "STATUSBAR-SilentModeTile"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/SilentModeTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 4

    const v3, 0x7f0207f8

    const v2, 0x7f0207fa

    const/4 v1, 0x1

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0207cc

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0207fc

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_3
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v0, :pswitch_data_1

    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_5
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    :pswitch_6
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private sendLogs(I)V
    .locals 5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "None"

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    const-string v4, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feature"

    const-string v4, "QS06"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const-string v1, "Mute"

    goto :goto_0

    :pswitch_1
    const-string v1, "Vibrate"

    goto :goto_0

    :pswitch_2
    const-string v1, "Sound"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showSecondaryMenu()V
    .locals 0

    return-void
.end method

.method private updateNextProfile()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    const/4 v6, 0x1

    const-string v4, "STATUSBAR-SilentModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "false"

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0531

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateNextProfile()I

    move-result v2

    const-string v3, "STATUSBAR-SilentModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SilentMode handleClick(), setRingerModeInternal("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    sget-boolean v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDiagnosticLogs:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->sendLogs(I)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_0

    const-string v2, "STATUSBAR-SilentModeTile"

    const-string v3, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x7f0d0391

    const v3, 0x7f0d0387

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d0393

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f0d0392

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const v1, 0x7f0d0392

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()V

    :cond_0
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public updateStatus()V
    .locals 4

    const v3, 0x7f0d03b4

    const/4 v0, -0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x4

    const v1, 0x7f0d03b5

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v1, :cond_1

    const/4 v0, 0x2

    const v1, 0x7f0d03b6

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0
.end method

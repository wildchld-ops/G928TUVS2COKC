.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static final IC_AUDIO_BT:I = 0x7f02019f

.field private static final IC_AUDIO_BT_MUTE:I = 0x7f0201a0

.field private static final IC_AUDIO_VOL:I = 0x7f0201a3

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f0201a4

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_INTERNAL_RINGER_MODE_CHANGED:I = 0x10

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final PLAY_SOUND_DELAY:I = 0x0

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private mHasVibrator:Z

.field private final mIconPulser:Lcom/android/systemui/volume/IconPulser;

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mNotificationEffectsSuppressor:Landroid/content/ComponentName;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private final mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field private mZenPanelExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const-string v0, "VolumePanel"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 13

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    const/4 v9, 0x2

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/VolumePanel$9;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    const-string v9, "%s.%08x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "VolumePanel"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string v9, "audio"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v9, "accessibility"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityManager;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v9, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    new-instance v9, Lcom/android/systemui/volume/IconPulser;

    invoke-direct {v9, p1}, Lcom/android/systemui/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1120014

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_1

    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v6, v9, v1

    iget v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    sget-boolean v9, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v10, "new VolumePanel"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x1010033

    aput v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    new-instance v9, Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f0400e8

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Lcom/android/systemui/volume/VolumePanel$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->create()V

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v9, 0x0

    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const v9, 0x7f0c038b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v9, 0x7de

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, -0x3

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const v9, 0x7f100047

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v9, "VolumePanel"

    invoke-virtual {v2, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    const v9, 0x1040028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    const v9, 0x1020002

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/volume/VolumePanel$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-static {v9, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x7f0e043d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x7f0e043e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x7f0e0446

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const-string v9, "vibrator"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v9, :cond_4

    if-nez v7, :cond_4

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isZenAvailable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v9, v10}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    :cond_4
    const v9, 0x1120014

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const v9, 0x1120015

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    return-void

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/volume/VolumePanel;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 12

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v10, Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v11, v11

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v0, 0x0

    :goto_0
    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v10, v10

    if-ge v0, v10, :cond_9

    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v8, v10, v0

    iget v9, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    invoke-static {v9}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    new-instance v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    iput v9, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const v10, 0x7f0400ed

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0e0440

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v10, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    iget v10, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz v2, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_0

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    const v10, 0x7f02024e

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$6;

    invoke-direct {v11, p0, v6}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v10, 0x7f02024d

    iput v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    :cond_1
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0e0442

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0e0441

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v2, :cond_5

    iget-boolean v10, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-eqz v10, :cond_5

    const/4 v7, 0x1

    :goto_2
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0e0113

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0e0443

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const v11, 0x7f02024c

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    iget v11, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    if-eqz v7, :cond_6

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v7, :cond_2

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v11, p0, v6}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    if-nez v9, :cond_8

    :cond_3
    const/4 v4, 0x1

    :goto_5
    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v10, v6, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const/16 v10, 0x8

    goto :goto_3

    :cond_7
    const/16 v10, 0x8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceTimeout(J)V
    .locals 5

    const/4 v3, 0x5

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3

    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3

    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initZenModePanel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    return-void
.end method

.method private isMuted(I)Z
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private isZenPanelVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reorderSliders(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v0, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    iput p2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    :cond_0
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setZenPanelVisible(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZenPanelVisible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mZenPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v3

    if-eq p1, v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    goto :goto_1
.end method

.method private showSilentHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->showSilentHint()V

    :cond_0
    return-void
.end method

.method private showVibrateHint()V
    .locals 5

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/IconPulser;->start(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private static streamToString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/media/AudioService;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateActiveSlider()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    :cond_0
    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    :cond_4
    if-nez p3, :cond_6

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v5, v6, :cond_5

    if-nez v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    :cond_6
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_2

    move p2, v2

    :cond_0
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    goto :goto_2

    :cond_6
    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 2

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-nez v1, :cond_0

    iget p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    :cond_0
    if-gez p2, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    if-eqz v0, :cond_2

    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    :cond_2
    return-void
.end method

.method private updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 7

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v3, 0x10406b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTimeoutDelay()V
    .locals 3

    const/16 v0, 0x2710

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/16 v0, 0x1388

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1194

    goto :goto_0

    :cond_4
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0c031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v2, 0x7f0f005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateZenPanelVisible()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "volume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "icon"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "iconmute"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v6

    :goto_1
    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    const-string v5, "Stream"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;

    move-result-object v4

    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    sget-object v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "Stream"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mNotificationEffectsSuppressor="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/volume/ZenModePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_4

    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrate()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateActiveSlider()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->updateLocale()V

    :cond_0
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 4

    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v2, p0, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, -0xc8

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    const/16 v2, -0xc8

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_6

    const/16 v7, -0xc8

    if-ne p1, v7, :cond_3

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v7, :cond_3

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iput-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p3, :cond_3

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_3
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v7, v1, :cond_4

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v2

    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v4, v2, v7}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/ZenModePanel;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ZenModePanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, -0xc8

    if-ne p1, v7, :cond_12

    const/4 v5, -0x1

    :goto_2
    const/16 v7, -0x64

    if-eq v5, v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    :cond_9
    const/16 v7, -0xc8

    if-eq p1, v7, :cond_a

    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    and-int/lit16 v7, p2, 0x80

    if-eqz v7, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    :cond_b
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showVibrateHint()V

    :cond_c
    return-void

    :sswitch_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_d

    const v7, 0x7f02019f

    const v8, 0x7f0201a0

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    :cond_d
    const v7, 0x7f0201a3

    const v8, 0x7f0201a4

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :sswitch_6
    if-nez p3, :cond_e

    if-eqz v4, :cond_e

    iget-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    :cond_e
    if-nez p3, :cond_10

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v8, "sent remote volume change without a controller!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v7

    and-int/lit8 v7, v7, 0x0

    if-eqz v7, :cond_f

    or-int/lit8 p2, p2, 0x20

    goto :goto_3

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_12
    move v5, p1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p2, v1, :cond_2

    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDismiss(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3

    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-void
.end method

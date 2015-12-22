.class public Lcom/android/systemui/volume/SecVolumePanel;
.super Landroid/os/Handler;
.source "SecVolumePanel.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumePanel$Callback;,
        Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/SecVolumePanel$StreamControl;,
        Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON1:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON1"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON2:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON2"

.field public static final ACTION_VOLUMEPANEL_TOUCH_POPUP:Ljava/lang/String; = "android.view.volumepanel.TOUCH_POPUP"

.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_MEDIA:Ljava/lang/String; = "Media"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final EXTRA_RINGTONE:Ljava/lang/String; = "Ringtone"

.field private static final EXTRA_SYSTEM:Ljava/lang/String; = "System"

.field private static final FEATURE_UNIQUE_VALUE:Ljava/lang/String; = "FWVP"

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final FINEVOLUME_PARAM_PREFIX:Ljava/lang/String; = "audioParam;fine_volume="

.field private static final FREE_DELAY:I = 0x2710

.field private static final HW_USE_VALUE:J = 0x3e8L

.field private static final IC_AUDIO_VOL:I = 0x7f0201a3

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f0201a4

.field private static LOGD:Z = false

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final L_AMERICANO:Z

.field private static final L_CAPUCCINO:Z

.field private static final L_MOCHA:Z

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_DISSMISS_SAFE_VOLUME_WARNING:I = 0x10

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_THEME_APPLY:I = 0x11

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.volume"

.field private static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECT_PATH:Ljava/lang/String; = "system/media/audio/ui/TW_Volume_control.ogg"

.field private static final STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z = false

.field private static final SUPPORT_FINEVOLUME:Z = true

.field private static final SUPPORT_OPENTHEME:Z = true

.field private static final SUPPORT_WEARABLE_HMT:Z = true

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SW_USE_VALUE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "SecVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_FOR_VZW:I = 0xfa0

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final DENSITY_XXHDPI:D

.field private kidsModeSafetyToast:Landroid/widget/Toast;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBottomMarginView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

.field private final mCollapseMarginView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

.field private final mDialogLayout:Landroid/view/View;

.field private mDisabledAlpha:F

.field private final mDivider:Landroid/view/View;

.field private mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

.field private mExpandButtonDividerDefaultColor:Landroid/content/res/ColorStateList;

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mHasVibrator:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconButtonActiveColor:Landroid/content/res/ColorStateList;

.field private mIconButtonActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconButtonDisableColor:Landroid/content/res/ColorStateList;

.field private mIconButtonDisableDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisableColor:Landroid/content/res/ColorStateList;

.field private mIconDisableDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconSettingColor:Landroid/content/res/ColorStateList;

.field private mIconSettingDefaultColor:Landroid/content/res/ColorStateList;

.field private mIsShowingSCoverWarning:Z

.field private mKnoxCustomVolumePanelDisabled:Z

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mMediaSlider:Landroid/widget/SeekBar;

.field private mMediaVolumeIcon:Landroid/widget/ImageView;

.field private mMediaVolumePanel:Landroid/view/ViewGroup;

.field private mMediaVolumeTitle:Landroid/widget/TextView;

.field private final mMoreButton:Landroid/view/View;

.field private mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRingIsSilent:Z

.field private mSafetyValue:I

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/SecVolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mTopOffset:I

.field private mUseCocktailFeature:Z

.field private mValueForHwSwKey:J

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanelExpanded:Z

.field private mZenPanelTop:I

.field private sCoverTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    const-string v0, "mocha"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    const-string v0, "capuccino"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->TTSStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 22

    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    const/16 v17, 0xbb8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    const/16 v17, 0x9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$1;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTopOffset:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->sCoverTopOffset:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenPanelTop:I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->DENSITY_XXHDPI:D

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$2;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v17, "Ringtone"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    const-wide/16 v18, 0x3e8

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$10;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$11;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$12;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$13;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    const-string v17, "%s.%08x"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "SecVolumePanel"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string v17, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    new-instance v17, Landroid/media/SamsungAudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const-string v17, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.cocktailbar"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTintColor()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateDefaultTintColor()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v17, 0x7f0400ea

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v17, 0x1120014

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v6, 0x0

    :goto_0
    sget-object v17, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    sget-object v17, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v14, v17, v6

    iget v0, v14, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    const/16 v18, -0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    sget-boolean v17, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "new SecVolumePanel"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const v17, 0x3ecccccd    # 0.4f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x1010033

    aput v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel$3;-><init>(Lcom/android/systemui/volume/SecVolumePanel;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->requestFeature(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0377

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c038f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0377

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0390

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$4;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->create()V

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const v17, 0x7f0c038b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v17, 0x7e4

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x3

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    const v17, 0x7f100047

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v17, "SecVolumePanel"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->clearFlags(I)V

    const v17, 0x1040028

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    const v17, 0x1020002

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$5;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e043d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e043e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f020269

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0060

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$6;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0062

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0065

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e043f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Landroid/media/ToneGenerator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const-string v17, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mHasVibrator:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->makeSound()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120053

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    const v17, 0x1120014

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const v17, 0x1120015

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->registerReceiver()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->registerCoverReceiver()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$7;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v17, "com.sec.feature.cover.sviewcover"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    :cond_6
    const v17, 0x10501db

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTopOffset:I

    const v17, 0x10501dc

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->sCoverTopOffset:I

    return-void

    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_9
    const/16 v17, 0x0

    goto :goto_4
.end method

.method private IsTenDigitSame(II)Z
    .locals 7

    const-string v4, "SecVolumePanel"

    const-string v5, "IsTenDigitSame"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v2

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : currentIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v0, p2, 0xa

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : curQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v1, v2, v0

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private IsUnitDigitZero(I)Z
    .locals 5

    const-string v2, "SecVolumePanel"

    const-string v3, "IsUnitDigitZero"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    rem-int/lit8 v0, p1, 0xa

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : remainder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : unitNumIsZero = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/SecVolumePanel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/SecVolumePanel;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/volume/SecVolumePanel;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/SecVolumePanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/SecVolumePanel;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->expand()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/SecVolumePanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/SecVolumePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->closeCocktail()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/SecVolumePanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamTypeForLogging(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/SecVolumePanel;Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamVolume(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/SecVolumePanel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/SecVolumePanel;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->IsUnitDigitZero(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/SecVolumePanel;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/SecVolumePanel;->setTenDigitMediaVolume(III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/SecVolumePanel;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->IsTenDigitSame(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/SecVolumePanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setUnitDigtMediaVolume(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/SecVolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/SecVolumePanel;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/SecVolumePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/SecVolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDemoIcon:I

    return p1
.end method

.method private addOtherVolumes()V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const v4, 0x10808fa

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    const v4, 0x10808fc

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x104098f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "SecVolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_8

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    const v4, 0x1080904

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    const v4, 0x1080906

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x1040992

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "SecVolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    :cond_0
    return-void
.end method

.method private closeCocktail()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    const v4, 0x10004

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private collapse()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e7

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e6

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private createSliders()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v7, Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v10, v10

    invoke-direct {v7, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    sget-object v7, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    sget-object v7, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v7, v0

    iget v6, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    new-instance v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    invoke-direct {v4, v12}, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/SecVolumePanel$1;)V

    iput v6, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const v7, 0x7f0400ef

    invoke-virtual {v1, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0440

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    iget v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0061

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0063

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_0
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0442

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->registerReceiver()V

    if-eq v6, v11, :cond_1

    if-nez v6, :cond_4

    :cond_1
    move v2, v9

    :goto_1
    const-string v7, "SecVolumePanel"

    const-string v10, "createSliders : SUPPORT_FINEVOLUME = true"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const-string v7, "SecVolumePanel"

    const-string v10, "createSliders : streamType is MUSIC.. set max to 150.."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    add-int/lit16 v10, v2, 0x96

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    :goto_2
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eq v6, v11, :cond_2

    if-nez v6, :cond_3

    :cond_2
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v2, v8

    goto :goto_1

    :cond_5
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamMaxVolume(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private expand()V
    .locals 12

    const/4 v7, 0x0

    const/16 v11, 0x8

    iget v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v8, "SecVolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expand : isActiveStreamMusic = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v9, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    sget-object v8, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v8, v8, v1

    iget v6, v8, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    move-object v3, v5

    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/volume/SecVolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private forceTimeout(J)V
    .locals 5

    const/4 v3, 0x5

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

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
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

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
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

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

.method private getPixelFromDP(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    return v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3

    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 5

    const/16 v4, -0x64

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v4, -0xc8

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v4}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v1

    mul-int/lit8 v4, v2, 0xa

    add-int v2, v4, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

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

    const-string v5, "SecVolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getUnitDigitNumber(I)I
    .locals 1

    rem-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private initBottomMediaPanel()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumePanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    const v2, 0x1040990

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    const v2, 0x108090b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "SecVolumePanel"

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "SecVolumePanel"

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "SecVolumePanel"

    const-string v3, "insertLog : Call sendBoradcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method private isEmergencyModeEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/16 v2, -0x64

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, -0xc8

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

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

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private makeFineVolumeParam(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getUnitDigitNumber(I)I

    move-result v0

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeFineVolumeParam : index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeFineVolumeParam : unitDigit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private makeSound()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecVolumePanel"

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    goto :goto_0
.end method

.method private makeTenDigitVolumeParam(I)I
    .locals 1

    div-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private refreshMorebuttonTintColor()V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "refreshMorebuttonTintColor() clear cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getPixelFromDP(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getPixelFromDP(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "refreshResourceTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SecVolumePanel"

    const-string v1, "refreshResourceTintColor() clear cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v0, v3, :cond_2

    :cond_1
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v0, v3, :cond_6

    :cond_5
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/SecVolumePanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumePanel$8;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private reorderSliders(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-nez v0, :cond_0

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->addOtherVolumes()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->refreshMorebuttonTintColor()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTimeoutDelay()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

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

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

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
    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_3

    const-string v1, "SecVolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT 300"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :cond_3
    const-string v1, "SecVolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    return-void
.end method

.method private sendSafetyVolumeWarningToCocktailBar()V
    .locals 9

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "package"

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "content"

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    const-string v6, "progress"

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "max"

    iget-object v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "streamtype"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    aget v6, v1, v3

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    aget v6, v1, v3

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 8

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "content"

    const-class v6, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v5, "progress"

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "max"

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "streamtype"

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v6, 0x10004

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    aget v5, v1, v3

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    aget v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDualColorMediaSlider()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    iget v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v1, :cond_0

    iput p1, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    iput p2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMusicIcon progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setStreamTypeForLogging(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamTypeForLogging : mExtraForRingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_1
    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V
    .locals 4

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume : index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SecVolumePanel"

    const-string v2, "setStreamVolume : SUPPORT_FINEVOLUME = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v1, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "Adjusting remote volume without a controller!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    rem-int/lit8 v0, p2, 0xa

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume : progressRemainder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    div-int/lit8 v3, p2, 0xa

    invoke-virtual {v1, v2, v3, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setTenDigitMediaVolume(III)V
    .locals 4

    const-string v1, "SecVolumePanel"

    const-string v2, "setTenDigitMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->makeTenDigitVolumeParam(I)I

    move-result v0

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTenDigitMediaVolume : tenDigitVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private setUnitDigtMediaVolume(I)V
    .locals 4

    const-string v1, "SecVolumePanel"

    const-string v2, "setUnitDigtMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->makeFineVolumeParam(I)I

    move-result v0

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnitDigtMediaVolume : fineVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    return-void
.end method

.method private showInterruptionToast(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0531

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    const-string v0, "SecVolumePanel"

    const-string v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#0094b0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    const-string v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateLayout()V
    .locals 13

    const v12, 0x7f0c045a

    const v11, 0x7f0c038b

    const/16 v10, 0x31

    const-string v8, "SecVolumePanel"

    const-string v9, "===== Start updateLayout ====="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->orientation:I

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v8

    if-eqz v8, :cond_2

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    const-string v8, "SecVolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLayout : lp.width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lp.y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v3, v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const v8, 0x7f0c0456

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v8, 0x7f0c0459

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    if-eqz v8, :cond_3

    const v8, 0x7f0c038c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private updateRippleMoreButton()V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_2

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isEnableAOBLE()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v1, v4, :cond_4

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_1

    :cond_6
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v7, -0xc8

    if-ne v6, v7, :cond_3

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_7

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v7

    if-eq v6, v7, :cond_5

    if-nez p2, :cond_7

    :cond_5
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    if-eqz p2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    sget-object v6, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v6, :cond_9

    :cond_7
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->onStopDraggingState()V

    :cond_8
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_9
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-ne v6, v5, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isEnableAOBLE()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->onStopDraggingState()V

    :cond_a
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_c
    new-instance v2, Lcom/android/systemui/volume/SecVolumePanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumePanel$9;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V
    .locals 9

    const v8, 0x10808fc

    const v7, 0x10808f1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v3, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v4, :cond_5

    if-ne v1, v4, :cond_4

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080908

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    :goto_2
    return-void

    :cond_2
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080906

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080906

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_6

    if-ne v1, v4, :cond_1

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080900

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    if-ne v1, v4, :cond_8

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080900

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x10808f7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    if-ne v1, v5, :cond_b

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_a

    if-nez v0, :cond_9

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x10808fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_a
    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x10808f5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_b
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_c
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v6, :cond_d

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x3a0

    if-eqz v2, :cond_1

    invoke-direct {p0, v7, v7}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    :cond_d
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_e

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_e
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    goto :goto_3

    :cond_f
    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    goto/16 :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V
    .locals 4

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress : progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    :cond_0
    if-gez p2, :cond_2

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result p2

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress : converted mediaVolume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    if-eqz v0, :cond_4

    iput p2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    :cond_4
    return-void

    :cond_5
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private updateSliderSupressor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 3

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTimeoutDelay()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateTintColor()V
    .locals 3

    const v2, 0x106013d

    const-string v0, "SecVolumePanel"

    const-string v1, "updateTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgColor:Landroid/content/res/ColorStateList;

    return-void
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
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    move-result-object v4

    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDemoIcon:I

    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

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
    iget v5, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v3, "SecVolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

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

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onMuteChanged(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onFreeResources()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onStopSounds()V

    goto :goto_0

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onPlaySound(II)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "SecVolumePanel"

    const-string v2, "handleMessage : call mDialog.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->closeCocktail()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->clearRemoteStreamController()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onVisible(Z)V

    :cond_4
    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SecVolumePanel"

    const-string v2, "handleMessage : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTintColor()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->onDisplaySafeVolumeWarning(I)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->sendSafetyVolumeWarningToCocktailBar()V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    :pswitch_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenModeAvailable:Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public isEnableAOBLE()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExtraButtonOn()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSafeVolumeDialogShowing()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSviewCoverOpened()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v2, "SecVolumePanel"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "SecVolumePanel"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v5, "SecVolumePanel"

    const-string v6, "===== Start onConfigurationChanged ====="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SecVolumePanel"

    const-string v6, "onConfigurationChanged : call updateLayout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    const/4 v0, 0x0

    :goto_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v3, v5, v0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDismissSafeVolumeWarning()V
    .locals 3

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v2, "onDismissSafeVolumeWarning : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "SecVolumePanel"

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 24

    const/high16 v19, 0x10000000

    and-int v19, v19, p1

    if-eqz v19, :cond_0

    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : get FLAG_DISMISS_UI_WARNINGS, call onDismissSafeVolumeWarning"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : return"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "kids_home_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    :goto_1
    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v9

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v12

    const-string v19, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v20, "getSealedState"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v19, "getSealedState"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v12}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v19

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d04be

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const-string v19, "sys.hmt.connected"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    goto/16 :goto_2

    :cond_5
    sget-object v20, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v20

    :try_start_0
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v19, :cond_8

    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    sget-boolean v19, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v19, :cond_6

    const-string v19, "SecVolumePanel"

    const-string v21, "show warning popup on the s view cover and than return"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    :cond_7
    monitor-exit v20

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    :cond_8
    :try_start_1
    new-instance v19, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/SecVolumePanel;Landroid/media/AudioManager;)V

    sput-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    const-string v19, "SecVolumePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isCoverOpen = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_f

    const-string v19, "SecVolumePanel"

    const-string v21, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v21, 0x7e4

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "SecVolumePanel"

    const-string v21, "onDisplaySafeVolumeWarning :  call mDialog.dismiss()"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    :cond_9
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V

    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const/16 v21, 0x3

    aget-object v17, v19, v21

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_a
    if-nez v9, :cond_e

    sget-boolean v19, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v19, :cond_b

    const-string v19, "SecVolumePanel"

    const-string v21, "show warning popup on the s view cover"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    move/from16 v19, v0

    const/16 v21, 0x6

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    :cond_d
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v21, 0x7f0400e7

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_5
    new-instance v4, Landroid/content/Intent;

    const-string v19, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "visibility"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v19, "type"

    const-string v21, "volume"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "remote"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.view.volumepanel.CLICK_BUTTON1"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.view.volumepanel.CLICK_BUTTON2"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    const v19, 0x7f0e043a

    move/from16 v0, v19

    invoke-virtual {v15, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v19, 0x7f0e043b

    move/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    :cond_e
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_2

    :cond_f
    :try_start_2
    const-string v19, "SecVolumePanel"

    const-string v21, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v21, 0x7d9

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_4

    :cond_10
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v21, 0x7f0400e6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTimeoutDelay()V

    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : call resetTimeout()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    goto/16 :goto_0
.end method

.method protected onFreeResources()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->releaseSound()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onMuteChanged(II)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->onVolumeChanged(II)V

    return-void
.end method

.method protected onPlaySound(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->makeSound()V

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->playSound(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, -0xc8

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

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

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->reorderSliders(I)V

    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "SecVolumePanel"

    const-string v1, "onRemoteVolumeChanged : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    const/16 v2, -0xc8

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 20

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_0

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged():initCoverManager"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShowVolumeChanged(streamType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", flags: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), index: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x1040270

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateRippleMoreButton()V

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_0
    if-eqz v11, :cond_7

    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_4
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz p3, :cond_5

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_5
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getMax()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v8, :cond_6

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v17

    and-int/lit8 v16, p2, 0x20

    if-eqz v16, :cond_12

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V

    :cond_7
    if-eqz v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_13

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v16, :cond_13

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged :  call mDialog.dismiss()"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->dismiss()V

    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_8

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/SecVolumePanel;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    :cond_8
    :goto_2
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x3a0

    move/from16 v16, v0

    if-eqz v16, :cond_9

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x10808f1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_9
    const v16, 0x108090a

    const v17, 0x108090e

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    :sswitch_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-nez v6, :cond_a

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    move/from16 v16, v0

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    move/from16 v16, v0

    goto :goto_3

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_b

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v16, :cond_c

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v16, :cond_c

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x1080900

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x10808f7

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-nez v6, :cond_e

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    move/from16 v16, v0

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_e
    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    move/from16 v16, v0

    goto :goto_4

    :sswitch_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :sswitch_6
    if-nez p3, :cond_f

    if-eqz v11, :cond_f

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 p3, v0

    :cond_f
    if-nez p3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "sent remote volume change without a controller!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_5
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showing remote volume "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " over "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v8

    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v16

    if-nez v16, :cond_10

    or-int/lit8 p2, p2, 0x20

    goto :goto_5

    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v16

    if-nez v16, :cond_1d

    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    const/4 v13, -0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    const/high16 v16, 0x8000000

    and-int v16, v16, p2

    if-eqz v16, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->expand()V

    :goto_7
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->setSeekbarSlidingAnimation(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_17

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged: Cover is closed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0453

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v11, :cond_14

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v16, :cond_19

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->dismiss()V

    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    goto/16 :goto_2

    :cond_15
    move/from16 v13, p1

    goto/16 :goto_6

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->collapse()V

    goto/16 :goto_7

    :cond_17
    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged: Cover is opened"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v16, 0x8000000

    and-int v16, v16, p2

    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_19
    const/4 v12, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    const-string v16, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v17, "getVolumePanelEnabledState"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v16, "getVolumePanelEnabledState"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1b

    const-string v16, "false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_1a

    const-string v16, "SecVolumePanel"

    const-string v17, "Knox Customization: Not showing volume dialog"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v12, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    :cond_1b
    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onVisible(Z)V

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->announceDialogShown()V

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_1e

    if-eqz v11, :cond_1e

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/SecVolumePanel;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    :cond_1e
    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1f

    and-int/lit8 v16, p2, 0x10

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v18, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1f
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_20

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged : call setStreamTypeForLogging"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamTypeForLogging(I)V

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

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
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v2, v3, v0

    iget v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    iput-boolean v1, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I
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
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    const-string v4, "SecVolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
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

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged(streamType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags: "

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
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged():initCoverManager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 v3, 0x2000000

    and-int/2addr v3, p2

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged updateStates"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged : useSlidingAnimation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_7

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged: Call setSeekbarSlidingAnimation(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->setSeekbarSlidingAnimation(Z)V

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v1, :cond_9

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExtraButtonOn()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_WARNING)_#1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMode(I)V

    :cond_9
    :goto_1
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_b

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v3, p1, :cond_a

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    const-string v3, "SecVolumePanel"

    const-string v4, "call sc_music.seekbarView.setMax(150)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call reorderSliders"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->reorderSliders(I)V

    :cond_a
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    if-nez v3, :cond_c

    invoke-virtual {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v8, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_d

    invoke-virtual {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onStopSounds()V

    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call resetTimeout()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_9

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_f

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExtraButtonOn()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_11

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_WARNING)_#3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    :cond_12
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_13

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_STANDARD)_#4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    :cond_14
    :try_start_1
    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call updateStates #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public postDismiss(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->forceTimeout(J)V

    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3

    const/16 v2, 0xb

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "postDisplaySafeVolumeWarning():initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postMuteChanged(II)V

    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postVolumeChanged(II)V

    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

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
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

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

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

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
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCoverReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/SecVolumePanel$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    return-void
.end method

.method public setSeekbarSlidingAnimation(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSeekbarSlidingAnimation(): Call sc.seekbarView.setSlidingAnimation: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->setSlidingAnimation(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateStates()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->refreshMorebuttonTintColor()V

    return-void
.end method

.class public Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final EAD_ON:Ljava/lang/String; = "sys.adaptivedisplay.eadon"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumCCT:I

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    const v14, 0x989680

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    const/16 v14, 0x24

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    const-string/jumbo v14, "screen_mode_automatic_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v14, "screen_mode_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v14, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    const-string v14, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    const-string v14, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

    const-string v14, "1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "9"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    const-string v14, "/sys/class/mdnie/mdnie/scenario"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    const-string v14, "/sys/class/sensors/light_sensor/raw_data"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    const-string v14, "com.sec.android.app.SecSetupWizard"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    const-string v14, "com.android.systemui"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    const-string v14, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.sec.android.app.sbrowser"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "com.android.chrome"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.zgz.supervideo"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "com.kmplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "com.pg.gom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "com.gretech.gomplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "com.mxtech.videoplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "com.nhn.android.naverplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "com.inisoft.mediaplayer"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "com.google.android.youtube"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "com.google.android.videos"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenMode:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    const v14, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    const/16 v14, 0x23

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDuration:I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/HandlerThread;

    const-string v15, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v14, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200c0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    const-string/jumbo v14, "sys.adaptivedisplay.eadon"

    const-string/jumbo v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v14, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v14, "lcd_curtain"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "high_contrast"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v14, "color_blind"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "psm_switch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "ultra_powersaving_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "screen_mode_automatic_setting"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v14, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v14, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "com.sec.feature.scontext_lite"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "scontext"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v14, :cond_2

    new-instance v14, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107005e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/4 v14, 0x1

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    const/4 v14, 0x2

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107005f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    const/4 v14, 0x2

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->foregroundDelayTime:J

    if-eqz v7, :cond_3

    int-to-long v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->foregroundDelayTime:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    if-eqz v5, :cond_4

    int-to-long v14, v5

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    if-eqz v6, :cond_5

    int-to-long v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070060

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x24

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v8, 0x0

    :goto_0
    array-length v14, v3

    if-ge v8, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v14, "sys.adaptivedisplay.eadon"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setting_is_changed()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v14}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v14, :cond_8

    const-string v14, "AdaptiveDisplayColorService"

    const-string/jumbo v15, "failed to registerProcessObserver"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIIII)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$2002(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    return p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    return p1
.end method

.method static synthetic access$2302(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    return p1
.end method

.method static synthetic access$2402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method private animateScrRGB()V
    .locals 14

    const/4 v13, 0x3

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    if-lez v4, :cond_1

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v7, v10, :cond_2

    iget v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v7, v10

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v7, v10

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v7, v10

    if-lez v3, :cond_4

    if-gt v3, v11, :cond_4

    if-lez v1, :cond_4

    if-gt v1, v11, :cond_4

    if-lez v0, :cond_4

    if-gt v0, v11, :cond_4

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_3

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v7, :cond_3

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v13}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v7, v13, v10, v11}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private enableRgbSensor(Z)V
    .locals 11

    const/16 v10, 0x2c

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x0

    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AdaptiveDisplayColorService"

    const-string v4, "StatFs returns null."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AdaptiveDisplayColorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableRgbSensor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    iput v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    iput v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDuration:I

    invoke-direct {v0, v3, v4}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v3, v4, v10}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v4, v5, v9, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_4
    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v3, v4, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private getRgbFromLightSensor()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "AdaptiveDisplayColorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x80

    new-array v1, v12, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_0

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, -0x1

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v9, v10

    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    :cond_3
    :goto_1
    return-object v9

    :catch_0
    move-exception v3

    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_2
    :try_start_3
    const-string v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v11

    :catch_5
    move-exception v3

    const-string v12, "AdaptiveDisplayColorService"

    const-string v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v11

    move-object v6, v7

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v6, v7

    goto :goto_3

    :catch_7
    move-exception v4

    move-object v6, v7

    goto :goto_2

    :cond_5
    move-object v6, v7

    goto :goto_1
.end method

.method private handleRgbSensorEvent(IIIII)V
    .locals 7

    const/16 v6, 0x8

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_0
    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2c

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorValue(IIIII)V

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private handleRgbSensorValue(IIIII)V
    .locals 9

    const/4 v8, 0x2

    add-int v6, p1, p2

    add-int v3, v6, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    :cond_0
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v6, :cond_1

    iput v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v6, p4

    iput-wide v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    iput p5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    iput v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private initRgbAverage()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    iput v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    iput v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    return-void
.end method

.method private isInBoundary()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private max_num(II)I
    .locals 0

    if-lt p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private min_num(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .locals 10

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez v6, :cond_3

    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "sys.ssrm.mdnie"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    or-int/2addr v2, v6

    if-eqz v2, :cond_a

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_9

    :cond_8
    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    :cond_b
    if-eqz v3, :cond_c

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_c
    if-eqz v1, :cond_10

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_f

    :cond_d
    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_e

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    iget-wide v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x0

    goto :goto_4

    :cond_10
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_11
    :goto_5
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_0

    :cond_12
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const-string v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5
.end method

.method private receive_multi_window_on_intent()V
    .locals 5

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendForcedRGB(IIIII)V
    .locals 4

    add-int v1, p1, p2

    add-int v0, v1, p3

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v2, p4

    iput-wide v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    iput p5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method private sendRgbAverage()V
    .locals 36

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v12, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v33, v0

    if-lez v33, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    :goto_0
    int-to-long v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v20, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v14, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v7, v33, v34

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    move-wide/from16 v34, v0

    div-long v8, v34, v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    const-string v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "AvgR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", AvgG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", AvgB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", avg lux : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    :try_start_0
    const-string v33, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v33, 0x0

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    const/16 v33, 0x1

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/16 v33, 0x2

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :goto_2
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    :cond_3
    move-wide/from16 v18, v8

    const/16 v16, -0x1

    const-wide/16 v34, 0x4

    cmp-long v33, v18, v34

    if-gez v33, :cond_b

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v24, v0

    :goto_3
    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    if-eqz v24, :cond_6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    const-string v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "scrR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", scrG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", scrB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V

    :cond_6
    return-void

    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_1

    :catchall_0
    move-exception v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_8
    throw v33

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v24, v0

    goto/16 :goto_3

    :cond_b
    :goto_4
    const-wide/16 v34, 0x0

    cmp-long v33, v18, v34

    if-eqz v33, :cond_c

    const/16 v33, 0x1

    shr-long v18, v18, v33

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-nez v33, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    :cond_d
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    :goto_5
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v20

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v34, v0

    div-int v31, v33, v34

    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v14

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v34, v0

    div-int v30, v33, v34

    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v7

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v34, v0

    div-int v29, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v27, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x3

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x4

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x5

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x6

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x7

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x8

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x9

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xa

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    :goto_6
    add-int v23, v27, v6

    add-int v22, v26, v5

    add-int v21, v24, v4

    const-wide/16 v34, 0x190

    cmp-long v33, v8, v34

    if-gez v33, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v6, v0, -0xff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v5, v0, -0xff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v4, v0, -0xff

    goto/16 :goto_5

    :cond_f
    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0xc

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xd

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xe

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xf

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x10

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x11

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x13

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x14

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x15

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x16

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x17

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    const/16 v24, 0xff

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x18

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x19

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1a

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1b

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1d

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    const/16 v26, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x1e

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1f

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x20

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x21

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x22

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x23

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_6

    :cond_11
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    :cond_12
    move/from16 v27, v23

    move/from16 v26, v22

    move/from16 v24, v21

    goto/16 :goto_3

    :cond_13
    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    goto/16 :goto_3
.end method

.method private setAverageValue(IIIII)V
    .locals 10

    add-int v6, p1, p2

    add-int v3, v6, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    iget-wide v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    int-to-long v8, p4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    add-int/2addr v6, p5

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    return-void
.end method

.method private setVideoMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    return-void
.end method

.method private setting_is_changed()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_9

    :goto_7
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_8
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_6

    :cond_9
    move v3, v4

    goto :goto_7

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "AdaptiveDisplayColorService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8
.end method

.method private terminateScrRGB()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    return-void
.end method

.method private terminateVideoMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    return-void
.end method

.method private updateScreen()V
    .locals 6

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AdaptiveDisplayColorService"

    const-string/jumbo v4, "failed to updateScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

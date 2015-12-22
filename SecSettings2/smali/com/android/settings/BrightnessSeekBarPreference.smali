.class public Lcom/android/settings/BrightnessSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private currentLevel:I

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mHBMText:Landroid/widget/TextView;

.field private mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mHBM_User_enableObserver:Landroid/database/ContentObserver;

.field private mIsBatteryLowFlag:Z

.field private mIsHBM_PMS_OnOffDB:Z

.field private mIsHBM_UserOnOffDB:Z

.field mIsLessThanMaxValue:Z

.field private mIsNobleModel:Z

.field private mMaxBrightness:I

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverheatTextview:Landroid/widget/TextView;

.field private mPower:Landroid/os/IPowerManager;

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mTracking:Z

.field supportAutoBrightnessDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessSeekBarPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticAvailable:Z

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->currentLevel:I

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsBatteryLowFlag:Z

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$1;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$2;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$3;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$4;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$5;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_User_enableObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/BrightnessSeekBarPreference$8;

    invoke-direct {v1, p0}, Lcom/android/settings/BrightnessSeekBarPreference$8;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessDefault:I

    const-string v1, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "min Brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BrightnessSeekBarPreference"

    const-string v4, "EnableAuto"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticAvailable:Z

    :cond_0
    const v1, 0x7f04017b

    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isSupportAutoBrightnessDetail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0023

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "high_brightness_mode_user_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "high_brightness_mode_pms_enter"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessSeekBarPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mTracking:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/BrightnessSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->setHBMIconAndText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/BrightnessSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/BrightnessSeekBarPreference;)Lcom/android/settings/widget/BrightnessIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    return v0
.end method

.method private changeSeekbarColor(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    const-string v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f020245

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private getBrightness()I
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v2

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-float v0, v3

    :goto_0
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v0

    float-to-int v1, v3

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v1, v3, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_0
    return v1

    :cond_1
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    int-to-float v0, v3

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private isFolderClose()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private setBrightness(I)V
    .locals 5

    const v4, 0x461c4000    # 10000.0f

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v2, v3

    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v2, v3

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v2, v3

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valf : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, v1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v2, v3

    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v2, v3

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setBrightnessIcon(Z)V
    .locals 3

    const v2, 0x7f020291

    const v1, 0x7f020290

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020292

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private setHBMIconAndText()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    const v3, 0x7f0a1602

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f020292

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    :cond_0
    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch hbm is enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsHBM_UserOnOffDB is enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsNobleModel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    const v3, 0x7f0a1603

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010038

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f100342

    const/16 v6, 0x2710

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-direct {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    iput v7, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    const v3, 0x1020403

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v3, :cond_2

    :goto_1
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const v3, 0x7f100344

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const v3, 0x7f100343

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsNobleModel:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iput-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/BrightnessIconView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/BrightnessIconView;->setMax(I)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    new-instance v4, Lcom/android/settings/BrightnessSeekBarPreference$7;

    invoke-direct {v4, p0}, Lcom/android/settings/BrightnessSeekBarPreference$7;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/BrightnessIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings_preferences"

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "pref_siop_brightness"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "pref_siop_brightness_change_type"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/BrightnessSeekBarPreference;->setMaxBrightnessLimit(II)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->setHBMIconAndText()V

    goto/16 :goto_1

    :cond_5
    const v3, 0x7f1002fc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a158d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/BrightnessSeekBarPreference$6;

    invoke-direct {v4, p0}, Lcom/android/settings/BrightnessSeekBarPreference$6;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_2
.end method

.method public onBrightnessChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    :cond_0
    return-void
.end method

.method public onBrightnessModeChanged()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->setMode(I)V

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsBatteryLowFlag:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    mul-int v3, v0, v1

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v3, v4

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on stop tracking touch brightness DB input:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    if-nez v0, :cond_0

    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckBox.isChecked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v0, p2, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_0
    :goto_0
    const-string v0, "BrightnessSeekBarPreference"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightness(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    mul-int v3, v0, v1

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v3, v4

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on stop tracking touch brightness DB input:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerBrightnessObserver()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "high_brightness_mode_user_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_User_enableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setBatteryLowFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsBatteryLowFlag:Z

    return-void
.end method

.method public setFlipCloseStatus(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxBrightnessLimit(II)V
    .locals 5

    const v4, 0x461c4000    # 10000.0f

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    int-to-float v0, v1

    iput p2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    iget v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0
.end method

.method public unRregisterBrightnessObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_User_enableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

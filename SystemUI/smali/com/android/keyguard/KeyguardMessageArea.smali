.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"

.field private static mKeyguardShowing:Z


# instance fields
.field private final BATTERY_LOW_ICON:I

.field private final CHARGING_ICON:I

.field private final MODE_CAMERA_SHORTCUT:I

.field protected mBatteryCharged:Z

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field protected mBatteryIsFastCharging:Z

.field protected mBatteryIsFastWirelessCharging:Z

.field protected mBatteryIsLow:Z

.field protected mBatteryIsWirelessCharging:Z

.field private mBatteryLevel:I

.field private mCached:Z

.field private mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mIcon:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKnoxCustomLockScreenState:I

.field private mKnoxObserver:Landroid/database/ContentObserver;

.field private mKnoxURI:Landroid/net/Uri;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShadowColor:I

.field mShorcutMessage:Ljava/lang/CharSequence;

.field private mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field private mTextColor:I

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->MODE_CAMERA_SHORTCUT:I

    iput v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->CHARGING_ICON:I

    iput v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->BATTERY_LOW_ICON:I

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastCharging:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastWirelessCharging:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    iput v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTextColor:I

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    iput v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$4;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104061e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTextColor:I

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->resetShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardMessageArea;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardMessageArea;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_charged:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeTimeRemaining()J

    move-result-wide v0

    const-string v3, "KeyguardMessageArea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChargeInfo( chargingTimeRemaining = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_charging_remaining_time:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput v7, p1, Landroid/util/MutableInt;->value:I

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v3, :cond_8

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_charged_nexti:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_3
    return-object v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastWirelessCharging:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_fast_charging_in_wireless:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_charging_in_wireless:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastCharging:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_high_voltage_plugged_in:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_plugged_in:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_low_battery:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput v7, p1, Landroid/util/MutableInt;->value:I

    goto/16 :goto_1

    :cond_8
    sget v3, Lcom/android/keyguard/R$string;->lockscreen_plugged_in_nexti:I

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_low_battery_nexti:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method private getChargeTimeRemaining()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "KeyguardMessageArea"

    const-string v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private hideMessage(IZ)V
    .locals 5

    const/4 v4, 0x0

    if-lez p1, :cond_2

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$6;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private resetShortcutReleasedLayout()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    return-void
.end method

.method private setShortcutReleasedLayout()V
    .locals 8

    const/16 v4, 0x11

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_shortcuts_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez p1, :cond_0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$5;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageArea$5;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(F)V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    return-void
.end method

.method public securityMessageChanged()V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    return-void
.end method

.method update()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    if-nez v3, :cond_0

    iput-boolean v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    const-string v4, "getLockScreenHiddenItems"

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    :cond_0
    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_2
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v6}, Landroid/util/MutableInt;-><init>(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, v1, Landroid/util/MutableInt;->value:I

    if-eqz v3, :cond_4

    iget v3, v1, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateBlackTextOnWhiteWallpaper()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->invalidate()V

    return-void

    :cond_4
    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    const v0, -0xbbbbbc

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

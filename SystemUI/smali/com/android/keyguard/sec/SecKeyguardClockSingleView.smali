.class public Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockSingleView.java"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_DATE:I = 0x12

.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_TIME:I = 0x46

.field private static final FONT_SIZE_EASY_MODE_SINGLE_DATE:I = 0x14

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field protected static final MARGIN_RATIO_LEFT:F = 50.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_LONG_SHADOW_UPDATED:I = 0x68

.field private static final MSG_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final MSG_SINGLE_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockSingleView"

.field public static mBatteryLevel:I


# instance fields
.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

.field private mLocale:Ljava/util/Locale;

.field private mOldClockText:Ljava/lang/String;

.field private mShadowImageView:Landroid/widget/ImageView;

.field private mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleClockContainer:Landroid/view/View;

.field private mSingleClockSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field protected mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method private addTextChangedListenerForClockTimeMargin()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private applyFontEffect()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SecKeyguardClockSingleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/FontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/FontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SecKeyguardClockSingleView"

    const-string v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private isLeftKoreanAMPM()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    return v0
.end method

.method private isShowDateOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScreenTurnedOff()V
    .locals 2

    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 3

    const/16 v2, 0x68

    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    return-void
.end method

.method private setClockContentDesciption()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v2, :cond_0

    const-string v2, "ko"

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setDateContentDescriptionPlusFullDate(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setDateContentDescriptionPlusFullDate(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_date_and_year"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x67

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm_kor:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/system/fonts/SamsungNeoNumCond-3T.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string v1, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "white_cover_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->applyFontEffect()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/keyguard/R$id;->shadow_imageview:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v4, v5}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const-string v1, "iw"

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    :goto_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V

    return-void

    :cond_5
    const-string v1, "/system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    const-string v1, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string v1, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x4

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "onLayout changed. shadow init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->intialize()V

    :cond_0
    return-void
.end method

.method protected setClockStyle()V
    .locals 15

    const/4 v14, 0x1

    const v13, -0xbbbbbc

    const/high16 v12, -0x80000000

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_5

    const-string v7, "SecKeyguardClockSingleView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clockThemeFont: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSystemThemeFont()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "SecKeyguardClockSingleView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "systemThemeFont: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v2

    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-static {v14, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v2, v7

    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateTimeFormat()V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->kg_singleclock_first_digit_one_margin_start:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v8, v2

    invoke-virtual {v7, v11, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_3
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v7, v14, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    :goto_5
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    :cond_8
    int-to-float v7, v2

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    neg-int v7, v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v7

    if-eqz v7, :cond_a

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_a
    int-to-float v7, v2

    const/high16 v8, 0x42480000    # 50.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_b
    const-string v7, "ko"

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v14, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_6
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    :cond_d
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_6

    :cond_e
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_7
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_7

    :cond_10
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v14, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto/16 :goto_4

    :cond_11
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v7

    if-nez v7, :cond_13

    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v7, :cond_14

    :cond_13
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v7, :cond_16

    :cond_14
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7, v13}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_5

    :cond_16
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_5
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateShadowViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    :cond_0
    return-void
.end method

.method public updateMarginPaddingTimeIfTheme(Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_ampm_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v4, v7, v2, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7, v7, v7, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2
.end method

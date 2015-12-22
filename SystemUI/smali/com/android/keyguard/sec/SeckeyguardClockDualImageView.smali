.class public Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
.super Landroid/widget/LinearLayout;
.source "SeckeyguardClockDualImageView.java"


# static fields
.field private static final ATT_ROAMING_TEXT:Ljava/lang/String; = ""

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DUAL_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final MSG_DUAL_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_DUAL_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field public static TAG:Ljava/lang/String;

.field public static mBatteryLevel:I


# instance fields
.field private DIGITS:[I

.field private HOME_ZONE:I

.field private ROAMING_ZONE:I

.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mDualClockHomeContainer:Landroid/view/View;

.field private mDualClockRoamingContainer:Landroid/view/View;

.field private mDualClockSettingsObserver:Landroid/database/ContentObserver;

.field private mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHour10th_home:Landroid/widget/ImageView;

.field private mHour10th_roam:Landroid/widget/ImageView;

.field private mHour1th_home:Landroid/widget/ImageView;

.field private mHour1th_roam:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mMin10th_home:Landroid/widget/ImageView;

.field private mMin10th_roam:Landroid/widget/ImageView;

.field private mMin1th_home:Landroid/widget/ImageView;

.field private mMin1th_roam:Landroid/widget/ImageView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SeckeyguardClockDualImageView"

    sput-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v1, v0, v4

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    iput v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    iput v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$4;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setClockContentDesciption()V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_0

    const-string v3, "ko"

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_2
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$5;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setHour(ZII)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p3, v2, :cond_3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v1, p2, 0xa

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p2, 0xa

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    rem-int/lit8 v1, p2, 0xa

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p2, 0xa

    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(II)V
    .locals 4

    rem-int/lit8 v1, p1, 0xa

    div-int/lit8 v0, p1, 0xa

    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateClock()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    :goto_0
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v23, "HOME CLOCK "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v20

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v23, "Roaming Clock "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    :cond_1
    if-nez v12, :cond_2

    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    :cond_3
    if-nez v15, :cond_4

    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v4, "24"

    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    const-string v4, "12"

    goto :goto_0

    :cond_1
    const-string v4, "12"

    goto :goto_0

    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_clock_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x67

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->hour_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->hour_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->hour_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->hour_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->home_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->home_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    const-string v0, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockStyle()V

    :goto_1
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setClockStyle()V
    .locals 10

    const/4 v5, 0x4

    const/16 v7, 0x8

    const v9, -0xbbbbbc

    const/high16 v8, -0x80000000

    const/4 v4, 0x0

    sget-object v3, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v6, "setClockStyle()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Asia/Seoul"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home_Seoul:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming_Korea:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_4
    return-void

    :cond_7
    const-string v3, "ko"

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRoamingTextNotAllowedOnDualClock()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    move v3, v5

    goto/16 :goto_3

    :cond_e
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    :cond_f
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4
.end method

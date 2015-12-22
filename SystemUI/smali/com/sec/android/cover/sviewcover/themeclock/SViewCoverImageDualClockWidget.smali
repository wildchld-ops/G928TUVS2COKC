.class public Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverImageDualClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static final HOME_ZONE:I = 0x1

.field private static final ROAMING_ZONE:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private DIGITS:[I

.field private final MSG_CLOCK_UPDATE:I

.field private mAMPM_home:Landroid/widget/ImageView;

.field private mAMPM_roam:Landroid/widget/ImageView;

.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHomeCalendar:Ljava/util/Calendar;

.field mHomeClockViewContainer:Landroid/widget/LinearLayout;

.field mHomeDateViewContainer:Landroid/widget/LinearLayout;

.field private mHomeDayMonth:Landroid/widget/TextView;

.field private mHour10th_home:Landroid/widget/ImageView;

.field private mHour10th_roam:Landroid/widget/ImageView;

.field private mHour1th_home:Landroid/widget/ImageView;

.field private mHour1th_roam:Landroid/widget/ImageView;

.field private mIs24HTime:Z

.field private mIsDualClock:Z

.field private mMin10th_home:Landroid/widget/ImageView;

.field private mMin10th_roam:Landroid/widget/ImageView;

.field private mMin1th_home:Landroid/widget/ImageView;

.field private mMin1th_roam:Landroid/widget/ImageView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field mRoamingClockViewContainer:Landroid/widget/LinearLayout;

.field mRoamingDateViewContainer:Landroid/widget/LinearLayout;

.field private mRoamingDayMonth:Landroid/widget/TextView;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    new-instance v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->MSG_CLOCK_UPDATE:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mClockHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->initClock(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyyy"

    const-string v4, "MM"

    const-string v0, "dd"

    const-string v1, "-"

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    :cond_0
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->updateClockTime()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->updateDate()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeClockViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setAMPM(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAMPM_home:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clock_pm:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clock_am:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAMPM_roam:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clock_pm:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clock_am:I

    goto :goto_2
.end method

.method private setHour(II)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v1, p1, 0xa

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    rem-int/lit8 v1, p1, 0xa

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(II)V
    .locals 4

    rem-int/lit8 v1, p1, 0xa

    div-int/lit8 v0, p1, 0xa

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeDayMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingDayMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private updateClockTime()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v18

    const-string v19, "homecity_timezone"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v16

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    const-string v19, "HOME CLOCK "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "min : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "hour : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "AM_PM : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "hour_day : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "day_of_week : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "date : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "month : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    :goto_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setMin(II)V

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    const-string v19, "Roaming Clock "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "min : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "hour : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "AM_PM : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "hour_day : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "day_of_week : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "date : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "month : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    :goto_1
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setMin(II)V

    return-void

    :cond_2
    if-nez v10, :cond_3

    const/16 v18, 0xc

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    goto/16 :goto_0

    :cond_3
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    goto/16 :goto_0

    :cond_4
    if-nez v13, :cond_5

    const/16 v18, 0xc

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    goto :goto_1

    :cond_5
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setHour(II)V

    goto :goto_1
.end method

.method private updateDate()V
    .locals 6

    const-string v0, ""

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_month_day_no_year:I

    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_day_month_no_year:I

    :goto_0
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingDayMonth:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIsDualClock:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeDayMonth:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto :goto_0

    :cond_4
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_3

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mAMPM_roam:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mIs24HTime:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "On finish inflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_home_clock_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeClockViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_10th_home:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_1th_home:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_10th_home:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_1th_home:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_home_date_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_home_clock_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHomeDayMonth:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_roaming_clock_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mHour1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mMin1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_roaming_date_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_dual_roaming_clock_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mRoamingDayMonth:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->updateClockTime()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->updateDate()V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

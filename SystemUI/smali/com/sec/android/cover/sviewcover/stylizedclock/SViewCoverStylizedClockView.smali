.class public Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
.super Landroid/widget/LinearLayout;
.source "SViewCoverStylizedClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;
    }
.end annotation


# static fields
.field private static final FORMAT_DATE_MDAY:Ljava/lang/String; = "d"

.field private static final FORMAT_TIME_12_HOURS:Ljava/lang/String; = "hh"

.field private static final FORMAT_TIME_12_TIME:Ljava/lang/String; = "hh:mm"

.field private static final FORMAT_TIME_24_HOURS:Ljava/lang/String; = "kk"

.field private static final FORMAT_TIME_24_TIME:Ljava/lang/String; = "kk:mm"

.field private static final FORMAT_TIME_AMPM:Ljava/lang/String; = "aa"

.field private static final FORMAT_TIME_MINUTES:Ljava/lang/String; = "mm"

.field private static final TAG:Ljava/lang/String; = "SViewCoverStylizedClockView"


# instance fields
.field private mAmPmKrTV:Landroid/widget/TextView;

.field private mAmPmTV:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

.field private mDateTV:Landroid/widget/TextView;

.field private mDayTV:Landroid/widget/TextView;

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mHoursTV:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsFestivalEnabled:Z

.field private mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mMinutesTV:Landroid/widget/TextView;

.field private mPointerHoursIV:Landroid/widget/ImageView;

.field private mPointerMinutesIV:Landroid/widget/ImageView;

.field private mPointerSecondsIV:Landroid/widget/ImageView;

.field private mRotateAnim:Landroid/view/animation/RotateAnimation;

.field private mTimeTV:Landroid/widget/TextView;

.field private mUpdateAnalogTime:Z

.field private mUpdateDateTime:Z

.field private mUpdateDigitalTime:Z

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->isFestivalEffectEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTTSstylizedclock()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v5, :cond_0

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    return-void
.end method

.method private isFestivalEffectEnabled()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_enabled"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_lockscreen_wallpaper"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_1
    const-string v4, "SViewCoverStylizedClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFestivalEffectEnabled() festivalMasterEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", festivalLockscreenEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private updateAnalogTime()V
    .locals 14

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    mul-int/lit8 v0, v7, 0x3c

    add-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v2, 0x44340000    # 720.0f

    div-float v8, v0, v2

    mul-int/lit16 v0, v9, 0x168

    int-to-float v0, v0

    div-float v10, v0, v5

    mul-int/lit16 v0, v11, 0x168

    int-to-float v0, v0

    div-float v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateDateTime()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "d"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateDigitalTime()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v5, "mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "aa"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v5, :cond_8

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kk"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-nez v5, :cond_7

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const-string v5, "hh:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hh"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTime()V
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDigitalTime()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateAnalogTime()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDateTime()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    :cond_0
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;JJ)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateStyle()V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "SViewCoverStylizedClockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stylized clock style index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->removeAllViews()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleResId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLayoutId()I

    move-result v7

    invoke-virtual {v4, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_time:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm_kr:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_day:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_seconds:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->isFestivalEffectEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    sget v4, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v7, "FestivalList"

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    :cond_2
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_2
.end method

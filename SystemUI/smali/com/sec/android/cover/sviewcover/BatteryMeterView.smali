.class public Lcom/sec/android/cover/sviewcover/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_DEMO:Ljava/lang/String; = "com.android.systemui.demo"

.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field public static final BATTERY_PERCENT_DISPLAY_ENABLED:Z = true

.field private static final BLINKING_INTERVAL:I = 0x3e8

.field public static final COMMAND_BARS:Ljava/lang/String; = "bars"

.field public static final COMMAND_BATTERY:Ljava/lang/String; = "battery"

.field public static final COMMAND_CLOCK:Ljava/lang/String; = "clock"

.field public static final COMMAND_ENTER:Ljava/lang/String; = "enter"

.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit"

.field public static final COMMAND_NETWORK:Ljava/lang/String; = "network"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final EMPTY:I = 0x4

.field public static final FULL:I = 0x60

.field private static final MSG_POST_INVALIDATE:I = 0x1

.field public static final SHOW_100_PERCENT:Z

.field public static final SINGLE_DIGIT_PERCENT:Z

.field public static final SUBPIXEL:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private mButtonPadding:F

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mInvalidString:Ljava/lang/String;

.field mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsShowBatteryIcon:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    sget-object v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v7, "BatteryMeterView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    array-length v0, v4

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    aget v8, v4, v3

    aput v8, v6, v7

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v8, v1, v3

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v6

    const-string v7, "status_bar_show_battery_percent"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    const-string v6, "!"

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningString:Ljava/lang/String;

    const-string v6, "X"

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget v7, Lcom/sec/android/sviewcover/R$color;->batterymeter_frame_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string v6, "sans-serif-condensed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    sget v7, Lcom/sec/android/sviewcover/R$color;->batterymeter_bolt_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x4
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/BatteryMeterView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorForLevel(I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    aget v3, v4, v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    if-gt p1, v3, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8

    sget v5, Lcom/sec/android/sviewcover/R$array;->batterymeter_bolt_points:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBoltPoints : maxX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    :goto_0
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    sget-object v24, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v25, "battery icon blink..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const-wide/16 v26, 0x3e8

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    :cond_6
    move-object/from16 v0, v20

    iget v14, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_2

    int-to-float v0, v14

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v11, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingBottom()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    sub-int v12, v24, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    sub-int v21, v24, v17

    int-to-float v0, v12

    move/from16 v24, v0

    const v25, 0x3df5c28f    # 0.12f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcom/sec/android/sviewcover/R$integer;->battery_button_padding:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3e800000    # 0.25f

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/high16 v29, 0x40a00000    # 5.0f

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getColorForLevel(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v24, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDraw batteryColor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x60

    move/from16 v0, v24

    if-lt v14, v0, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v11, v24

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v11

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40900000    # 4.5f

    div-float v25, v25, v26

    add-float v7, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x40c00000    # 6.0f

    div-float v25, v25, v26

    add-float v9, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40e00000    # 7.0f

    div-float v25, v25, v26

    sub-float v8, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x41200000    # 10.0f

    div-float v25, v25, v26

    sub-float v6, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-eqz v24, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v13, 0x2

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v13, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_5

    :cond_9
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_7

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_e
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v27, 0x64

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    const v24, 0x3ec28f5c    # 0.38f

    :goto_6
    mul-float v24, v24, v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextHeight:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef0a3d7    # 0.47f

    mul-float v23, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_10
    const/high16 v24, 0x3f000000    # 0.5f

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/high16 v2, 0x3f400000    # 0.75f

    iput p2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    iput p1, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    return-void
.end method

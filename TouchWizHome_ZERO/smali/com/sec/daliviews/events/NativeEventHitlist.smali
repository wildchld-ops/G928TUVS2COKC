.class public Lcom/sec/daliviews/events/NativeEventHitlist;
.super Lcom/sec/daliviews/views/PeerBase;
.source "NativeEventHitlist.java"

# interfaces
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;,
        Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;
    }
.end annotation


# static fields
.field public static final COORD_SCALER:F = 1000.0f

.field public static final FLAG_FINGER_OUTSIDE:I = 0x4

.field public static final FLAG_IS_LOCAL_COORD:I = 0x1

.field public static final FLAG_SCROLL_CONTAINER:I = 0x2

.field private static final HAS_HISTORY:Z = true

.field private static final MAX_HISTORY_LEN:I = 0x4

.field private static final MAX_POINTERS:I = 0x2

.field private static final MAX_VIEW_DEPTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "NativeEventHitlist"

.field private static mLongPressSensitivity:I

.field private static mLongPressTimeout:I

.field private static mPinchExclusionDistance:F

.field private static mTapSensitivity:I


# instance fields
.field private mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

.field private mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

.field private mHasNativeDriver:Z

.field private mHistoryBuffer:[I

.field private mMotionBuffer:[I

.field private mMultiTouch:Z

.field private mResultDataBuffer:[I

.field private mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressTimeout:I

    sput v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressSensitivity:I

    sput v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mTapSensitivity:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mPinchExclusionDistance:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMotionBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHistoryBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultDataBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iput-boolean v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHasNativeDriver:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMultiTouch:Z

    invoke-direct {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->initNewSerialiseBuffers()V

    new-instance v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;-><init>(Lcom/sec/daliviews/events/NativeEventHitlist;)V

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    new-instance v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;-><init>(Lcom/sec/daliviews/events/NativeEventHitlist;)V

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->getNativeDriverStatus(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHasNativeDriver:Z

    const-string v0, "NativeEventHitlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeEventHitlist() created - nativeDriver State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHasNativeDriver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deepCopy(Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V
    .locals 5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p2, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    invoke-virtual {v3}, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->copy()Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    move-result-object v0

    iget-object v3, p2, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deserialiseResult([Lcom/sec/daliviews/views/NativeViewBase;[ILcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V
    .locals 16

    const/4 v10, 0x0

    const/4 v13, 0x0

    add-int/lit8 v11, v10, 0x1

    aget v7, p2, v10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    add-int/lit8 v10, v11, 0x1

    aget v8, p2, v11

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move v14, v13

    move v11, v10

    :goto_1
    if-ge v12, v8, :cond_1

    add-int/lit8 v13, v14, 0x1

    aget-object v3, p1, v14

    if-nez v3, :cond_0

    const-string v1, "NativeEventHitlist"

    const-string v2, "deserialiseResult: Null view, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    move v11, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v11, 0x1

    aget v1, p2, v11

    int-to-float v4, v1

    add-int/lit8 v11, v10, 0x1

    aget v1, p2, v10

    int-to-float v5, v1

    add-int/lit8 v10, v11, 0x1

    aget v6, p2, v11

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;-><init>(Lcom/sec/daliviews/events/NativeEventHitlist;Lcom/sec/daliviews/views/NativeViewBase;FFI)V

    invoke-virtual {v15, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v13, v14

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dumpHitInfo(Ljava/lang/String;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V
    .locals 0

    return-void
.end method

.method public static getLongPressSensitivity()I
    .locals 1

    sget v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressSensitivity:I

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v1, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressTimeout:I

    if-eq v0, v1, :cond_0

    const-string v1, "NativeEventHitlist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchconf_longpress_interval changed by ViewConfiguration: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressSensitivity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressTimeout:I

    :cond_0
    sget v1, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressTimeout:I

    return v1
.end method

.method private native getNativeDriverStatus(J)Z
.end method

.method public static getPinchExclusionDistance()F
    .locals 1

    sget v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mPinchExclusionDistance:F

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    return v0
.end method

.method public static getTapSensitivity()I
    .locals 1

    sget v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mTapSensitivity:I

    return v0
.end method

.method public static getTapTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method private initNewSerialiseBuffers()V
    .locals 11

    const/16 v6, 0x7b

    const/16 v7, 0x28

    const/16 v5, 0x25

    const/16 v4, 0xa

    const/16 v9, 0xa

    const/16 v0, 0x25

    const/16 v8, 0x7b

    const/16 v10, 0x28

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMotionBuffer:[I

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHistoryBuffer:[I

    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultDataBuffer:[I

    new-array v1, v7, [Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/events/NativeEventHitlist;->initSerialiseBuffers(JIIII)V

    return-void
.end method

.method private native initSerialiseBuffers(JIIII)V
.end method

.method private sendCancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->sendCancel(J)V

    return-void
.end method

.method private native sendCancel(J)V
.end method

.method private native sendPointersGetHitlists(J[II[II[I[Lcom/sec/daliviews/views/NativeViewBase;)I
.end method

.method private sendPointersGetHitlists(Landroid/view/MotionEvent;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)I
    .locals 10

    iget-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMotionBuffer:[I

    invoke-direct {p0, p1, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialiseMotion(Landroid/view/MotionEvent;[I)I

    move-result v5

    iget-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHistoryBuffer:[I

    invoke-direct {p0, p1, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialiseHistory(Landroid/view/MotionEvent;[I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMotionBuffer:[I

    iget-object v6, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHistoryBuffer:[I

    iget-object v8, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultDataBuffer:[I

    iget-object v9, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->sendPointersGetHitlists(J[II[II[I[Lcom/sec/daliviews/views/NativeViewBase;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultDataBuffer:[I

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/daliviews/events/NativeEventHitlist;->deserialiseResult([Lcom/sec/daliviews/views/NativeViewBase;[ILcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sendPointersGetHitlists"

    invoke-direct {p0, v1, p2}, Lcom/sec/daliviews/events/NativeEventHitlist;->dumpHitInfo(Ljava/lang/String;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V

    :cond_0
    return v0
.end method

.method private serialiseHistory(Landroid/view/MotionEvent;[I)I
    .locals 12

    const/4 v11, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v11, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x4

    if-gt v5, v8, :cond_0

    const/4 v4, 0x0

    move v3, v5

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aput v3, p2, v0

    move v2, v4

    :goto_1
    if-ge v2, v5, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, p2, v1

    const/4 v6, 0x0

    move v1, v0

    :goto_2
    if-ge v6, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput v11, p2, v1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    aput v8, p2, v0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v8

    aput v8, p2, v1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v8

    aput v8, p2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v5, -0x4

    const/4 v3, 0x4

    const-string v8, "NativeEventHitlist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropped "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " history points"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private serialiseMotion(Landroid/view/MotionEvent;[I)I
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NativeEventHitlist"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected motion event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_0

    const-string v9, "NativeEventHitlist"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected pointerCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    aput v7, p2, v4

    add-int/lit8 v4, v5, 0x1

    long-to-int v9, v2

    aput v9, p2, v5

    add-int/lit8 v5, v4, 0x1

    aput v0, p2, v4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    aput v9, p2, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v5

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    aput v7, p2, v4

    add-int/lit8 v4, v5, 0x1

    long-to-int v9, v2

    aput v9, p2, v5

    const/4 v6, 0x0

    move v5, v4

    :goto_1
    if-ge v6, v7, :cond_2

    add-int/lit8 v4, v5, 0x1

    if-ne v6, v1, :cond_1

    move v9, v0

    :goto_2
    aput v9, p2, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    aput v9, p2, v4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    move v4, v5

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v5, v4, 0x1

    aput v7, p2, v4

    add-int/lit8 v4, v5, 0x1

    long-to-int v9, v2

    aput v9, p2, v5

    const/4 v6, 0x0

    move v5, v4

    :goto_3
    if-ge v6, v7, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput v0, p2, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    aput v9, p2, v4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/daliviews/events/NativeEventHitlist;->serialisePosition(F)I

    move-result v9

    aput v9, p2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v4, v5

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NativeEventHitlist"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected Hover/Scroll event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private serialisePosition(F)I
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private native setPointerPrediction(JIF)V
.end method

.method private native surfaceChanged(JFFII)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMotionBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHistoryBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultDataBuffer:[I

    iput-object v0, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mResultViewBuffer:[Lcom/sec/daliviews/views/NativeViewBase;

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    return-void
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v5, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v5, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v5, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget-object v5, v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getEventChild()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    if-ne v5, p1, :cond_4

    iget-object v5, v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setEventChild(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v5, v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v5, v5, Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v5, :cond_4

    iget-object v1, v2, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/daliviews/views/ContainerViewBase;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/ContainerViewBase;->removePointersFromTouchTargets(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public processEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x3

    if-ne v2, v15, :cond_4

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMultiTouch:Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v15, 0x2

    if-le v10, v15, :cond_2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v15, "NativeEventHitlist"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Excess fingers on screen "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", sending cancel to all"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMultiTouch:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/daliviews/events/NativeEventHitlist;->sendPointersGetHitlists(Landroid/view/MotionEvent;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mHasNativeDriver:Z

    if-eqz v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->sendCancel()V

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ge v4, v15, :cond_11

    if-ge v4, v9, :cond_11

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->deepCopy(Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget-object v14, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget-object v15, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v0, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    move/from16 v16, v0

    iget v0, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    move/from16 v17, v0

    iget v0, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/sec/daliviews/views/NativeViewBase;->setEventData(FFI)V

    iget-object v15, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v14, v15}, Lcom/sec/daliviews/views/NativeViewBase;->setEventChild(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v15, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/daliviews/views/NativeViewBase;->setEventChild(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v14, v5, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/sec/daliviews/views/NativeViewBase;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mMultiTouch:Z

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    :goto_2
    return v15

    :cond_5
    const-string v15, "NativeEventHitlist"

    const-string v16, "Received hitlist empty, this event sequence will be ignored"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x2

    if-eq v2, v15, :cond_8

    const/4 v15, 0x1

    if-ne v2, v15, :cond_e

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget v6, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    iget v7, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    iget-object v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    move/from16 v16, v0

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    move/from16 v17, v0

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/sec/daliviews/views/NativeViewBase;->setEventData(FFI)V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    iget-object v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mX:F

    move/from16 v16, v0

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mY:F

    move/from16 v17, v0

    iget v0, v8, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/sec/daliviews/views/NativeViewBase;->setEventData(FFI)V

    goto :goto_5

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_b

    iget v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    iget-object v15, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v0, v11, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v6, v7, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setEventData(FFI)V

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_c
    const-string v16, "NativeEventHitlist"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Range: FingerNum="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", DownSize="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", CurrSize="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mCurrInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    const-string v15, "<null>"

    goto :goto_7

    :cond_e
    const/4 v15, 0x5

    if-eq v2, v15, :cond_f

    const/4 v15, 0x6

    if-ne v2, v15, :cond_10

    :cond_f
    const-string v15, "NativeEventHitlist"

    const-string v16, "TODO - multi-finger actions needed?"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    const/4 v15, 0x3

    if-eq v2, v15, :cond_6

    const-string v15, "NativeEventHitlist"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unhandled event "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    iget-object v15, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;

    iget-object v12, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitElement;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v12, Lcom/sec/daliviews/views/ContainerViewBase;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/views/ContainerViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_12
    const/4 v15, 0x3

    if-eq v2, v15, :cond_13

    const/4 v15, 0x1

    if-ne v2, v15, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/daliviews/events/NativeEventHitlist;->mDownInfo:Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sec/daliviews/events/NativeEventHitlist$HitInfo;->mHits:Ljava/util/ArrayList;

    :cond_14
    move v15, v3

    goto/16 :goto_2
.end method

.method public setLongPressParams(II)V
    .locals 3

    sput p1, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressTimeout:I

    sput p2, Lcom/sec/daliviews/events/NativeEventHitlist;->mLongPressSensitivity:I

    const-string v0, "NativeEventHitlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchconf_longpress_timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NativeEventHitlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchconf_longpress_slop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPinchExclusionDistance(F)V
    .locals 0

    sput p1, Lcom/sec/daliviews/events/NativeEventHitlist;->mPinchExclusionDistance:F

    return-void
.end method

.method public setPointerPrediction(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/events/NativeEventHitlist;->setPointerPrediction(JIF)V

    return-void
.end method

.method public setTapParams(I)V
    .locals 3

    sput p1, Lcom/sec/daliviews/events/NativeEventHitlist;->mTapSensitivity:I

    const-string v0, "NativeEventHitlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchconf_tap_slop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceChanged(FFII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/events/NativeEventHitlist;->surfaceChanged(JFFII)V

    return-void
.end method

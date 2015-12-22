.class public Lcom/android/server/wm/DualScreenTransition;
.super Ljava/lang/Object;
.source "DualScreenTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DualScreenTransition$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_ANIM:Z = false

.field public static final DEBUG_TRANSFORMS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x190

.field private static final DEFAULT_APP_TRANSITION_INTERPOLATOR:I = 0x10c0027

.field public static final DEV_MODE:Z

.field public static final DIRECTION_MAIN_TO_SUB:I = 0x1

.field public static final DIRECTION_SUB_TO_MAIN:I = 0x2

.field public static DUALSCREEN_VI_ENABLED:Z = false

.field static final FREEZE_LAYER:I = 0xf4240

.field public static final PREFIX_TAG:Ljava/lang/String; = "[DualScreenTransition] "

.field public static final SAFE_DEBUG:Z

.field static final SCREEN_COVER_LAYER:I = 0xf4241

.field static final SCREEN_COVER_SURFACE_NANME:Ljava/lang/String; = "ScreenCoverSurface"

.field public static final SYSTEM_PROPERTY_TRANSIT_DEBUG:Ljava/lang/String; = "dev.ds.transit.debug"

.field public static final SYSTEM_PROPERTY_TRANSIT_DURATION:Ljava/lang/String; = "dev.ds.transit.duration"

.field public static final SYSTEM_PROPERTY_TRANSIT_ENABLE:Ljava/lang/String; = "dev.ds.transit.enable"

.field public static final SYSTEM_PROPERTY_TRANSIT_FREEZE:Ljava/lang/String; = "dev.ds.transit.freeze"

.field public static final SYSTEM_PROPERTY_TRANSIT_INTERPOLATOR:Ljava/lang/String; = "dev.ds.transit.interpolator"

.field public static final SYSTEM_PROPERTY_TRANSIT_TIMEOUT:Ljava/lang/String; = "dev.ds.transit.timeout"

.field public static final TAG:Ljava/lang/String; = "DualScreenTransition"

.field public static final TRANSIT_EXPAND:I = 0xc8

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_SHRINK:I = 0x12c

.field static final TRANSIT_TARGET_LAYER:I = 0xf4242

.field static final TRANSIT_TARGET_SURFACE_NANME:Ljava/lang/String; = "TransitTargetSurface"

.field public static final TRANSIT_TASK_MOVE:I = 0x64

.field public static final TRANSIT_TIMEOUT:I = -0x1

.field private static final TRANSIT_TYPE_NONE:I = 0x0

.field private static final TRANSIT_TYPE_TRANSLATE:I = 0x65

.field public static final USE_XML_ANIMATION:Z


# instance fields
.field mAnimRunning:Z

.field mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

.field mAnimStageDisplayCurrentRotation:I

.field mAnimStageDisplayHeight:I

.field mAnimStageDisplayOriginalRotation:I

.field mAnimStageDisplayWidth:I

.field private final mContext:Landroid/content/Context;

.field final mCoverInitialMatrix:Landroid/graphics/Matrix;

.field mCoveredDisplayCurrentRotation:I

.field mCoveredDisplayHeight:I

.field mCoveredDisplayOriginalRotation:I

.field mCoveredDisplayWidth:I

.field private final mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDevDuration:I

.field private mDevInterpolator:Landroid/view/animation/Interpolator;

.field mFromDisplay:Lcom/android/server/wm/DisplayContent;

.field final mHandler:Lcom/android/server/wm/DualScreenTransition$H;

.field private mMoreTransit:Z

.field private mMoveDirection:I

.field private mNextTransition:I

.field mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

.field mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

.field mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

.field mScreenCoverAnimation:Landroid/view/animation/Animation;

.field mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

.field mSession:Landroid/view/SurfaceSession;

.field mStarted:Z

.field final mTmpFloats:[F

.field mToDisplay:Lcom/android/server/wm/DisplayContent;

.field mTransitAnimation:Landroid/view/animation/Animation;

.field final mTransitInitialMatrix:Landroid/graphics/Matrix;

.field mTransitTargetDisplayCurrentRotation:I

.field mTransitTargetDisplayHeight:I

.field mTransitTargetDisplayOriginalRotation:I

.field mTransitTargetDisplayWidth:I

.field mTransitTargetSurfaceControls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field mTransitTargetWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mTransitTargetWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTransitTransformation:Landroid/view/animation/Transformation;

.field private mTransitionType:I

.field final mTrasitFinalMatrix:Landroid/graphics/Matrix;

.field mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

.field mWatingScreenDrawn:Z

.field private final mWindowAnimator:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/DualScreenTransition;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenFeatures;->SUPPORT_DUALSCREEN_VI:Z

    sput-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowAnimator;Landroid/view/SurfaceSession;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;I)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    new-instance v8, Lcom/android/server/wm/DualScreenTransition$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/wm/DualScreenTransition$H;-><init>(Lcom/android/server/wm/DualScreenTransition;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindows:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/Transformation;

    invoke-direct {v8}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    const/16 v8, 0x9

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTrasitFinalMatrix:Landroid/graphics/Matrix;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "context="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " windowAnimator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " session="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    if-nez p6, :cond_3

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fromDisplay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " toDisplay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " animStageDisplay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object p3, p0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    iput-object p4, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->setTransition(I)V

    const/16 v8, 0x64

    move/from16 v0, p7

    if-ne v0, v8, :cond_4

    const/16 v8, 0x65

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    :cond_4
    const/16 v8, 0x64

    move/from16 v0, p7

    if-eq v0, v8, :cond_5

    const/16 v8, 0xc8

    move/from16 v0, p7

    if-eq v0, v8, :cond_5

    const/16 v8, 0x12c

    move/from16 v0, p7

    if-eq v0, v8, :cond_5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid transition. ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v9}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v9

    if-ne v8, v9, :cond_10

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    :goto_0
    const v8, 0x10c0027

    invoke-static {p1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "creating DualScreenTransition. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " caller=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ctor : transitionType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {p0, v10}, Lcom/android/server/wm/DualScreenTransition;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " direction="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {p0, v10}, Lcom/android/server/wm/DualScreenTransition;->directionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " DEV_MODE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ctor : from d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (anim stage d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v8, :cond_f

    const-string v8, "dev.ds.transit.interpolator"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev.ds.transit.interpolator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v1, -0x1

    :try_start_0
    const-class v8, Lcom/android/internal/R$interpolator;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    :goto_1
    if-lez v1, :cond_8

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    :cond_8
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " devInterpolatorId=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mDevInterpolator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v8, "dev.ds.transit.duration"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev.ds.transit.duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    :cond_b
    :goto_2
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "durationInt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v8, "dev.ds.transit.enable"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev.ds.transit.duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    :cond_d
    :goto_3
    const/4 v8, 0x1

    if-ne v6, v8, :cond_11

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    :cond_e
    :goto_4
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "DualScreenTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "viEnableInt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    goto/16 :goto_0

    :cond_11
    if-nez v6, :cond_e

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v8

    goto/16 :goto_1

    :catch_3
    move-exception v8

    goto/16 :goto_1

    :catch_4
    move-exception v8

    goto/16 :goto_1

    :catch_5
    move-exception v8

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    return-object v0
.end method

.method static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1

    sub-int v0, p1, p0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method public static getFreezeTimeOut()I
    .locals 6

    const/16 v2, 0x1770

    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v3, :cond_3

    const-string v3, "dev.ds.transit.timeout"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dev.ds.transit.timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFreezeTimeOut() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return v1

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DualScreenTransition"

    const-string/jumbo v4, "getFreezeTimeOut() 6000"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "DualScreenTransition"

    const-string/jumbo v4, "getFreezeTimeOut() 6000"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getTransitTargetHeightOnAnimStage()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransitTargetWidthOnAnimStage()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;F)V

    return-void
.end method

.method private setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;F)V
    .locals 12

    const/4 v11, 0x3

    if-eqz p1, :cond_2

    const v2, 0xf4240

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    if-ne p1, v6, :cond_3

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const v2, 0xf4241

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    invoke-virtual {p2, v6}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v7, 0x2

    aget v4, v6, v7

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v5, v6, v7

    :try_start_0
    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    const/4 v6, 0x0

    cmpl-float v6, p3, v6

    if-ltz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, p3, v6

    if-gtz v6, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const v2, 0xf4242

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    if-ne p1, v6, :cond_5

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const v2, 0xf4241

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const v2, 0xf4242

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const v2, 0xf4242

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Surface is already released. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JF)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation() animationScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation mTransitionType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMoveDirection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage()I

    move-result v1

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTransitTargetDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetWidthOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetHeightOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->loadAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load animation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    if-lez v5, :cond_7

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    add-int/lit16 v0, v5, 0x3e8

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stepAnimation(J)Z
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    const-string v2, "Transit animations done, clearing transit anim!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTrasitFinalMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return v0
.end method

.method public static transitionToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TRANSIT_TIMEOUT"

    goto :goto_0

    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    :sswitch_2
    const-string v0, "TRANSIT_TASK_MOVE"

    goto :goto_0

    :sswitch_3
    const-string v0, "TRANSIT_EXPAND"

    goto :goto_0

    :sswitch_4
    const-string v0, "TRANSIT_SHRINK"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
    .end sparse-switch
.end method

.method private updateDisplayInfos()V
    .locals 15

    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayCurrentRotation:I

    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v11, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    :cond_0
    iput v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iput v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    :goto_0
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mTransitTargetDisplayWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalTransitTargetDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    :cond_2
    iput v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iput v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalCoveredDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mCoveredDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayOriginalRotation:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    :cond_4
    iput v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    :goto_2
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalAnimStageDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iput v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iput v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    goto/16 :goto_0

    :cond_7
    iput v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iput v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    goto/16 :goto_1

    :cond_8
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    goto :goto_2
.end method


# virtual methods
.method addTransitTargetLocked(Lcom/android/server/wm/AppWindowToken;Z)V
    .locals 5

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTransitTargetLocked() : token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTransitTarget() : skip adding... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTransitTargetLocked() : adding... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTransitTargetLocked() :  mAnimLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLastLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBaseLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTransitTargetLocked() : skip adding... (no SurfaceControl) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method canOverrideTransition(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;
    .locals 22

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSurface() d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v16

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_7

    const/16 v19, 0x1

    :cond_3
    if-eqz v19, :cond_4

    or-int/lit16 v8, v8, 0x80

    :cond_4
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v3, :cond_8

    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    :goto_1
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v10, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_6

    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSurface() screenshot! builtInDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p6

    move/from16 v14, p5

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    :cond_6
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    return-object v2

    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    goto :goto_1
.end method

.method public directionToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DIRECTION_MAIN_TO_SUB"

    goto :goto_0

    :pswitch_1
    const-string v0, "DIRECTION_SUB_TO_MAIN"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method dismiss(Landroid/view/SurfaceSession;JF)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DualScreenTransition"

    const-string v2, "Dismiss!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! does not support DUALSCREEN_VI"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! mTransitTargetSurfaceControls.size()=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DualScreenTransition;->startAnimation(Landroid/view/SurfaceSession;JF)Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    if-eqz v0, :cond_0

    const-string v0, "  mNextTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v0}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    if-eqz v0, :cond_1

    const-string v0, "  mTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "  mMoveDirection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->directionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method freezeForTransition(Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "freezeForTransition() callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DualScreenTransition"

    const-string/jumbo v1, "freezeForTransition() already has screenshots"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->updateDisplayInfos()V

    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :cond_2
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v9

    mul-int/lit16 v0, v9, 0x2710

    add-int/lit8 v5, v0, -0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v2, "TransitTargetSurface"

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v0, 0xf4242

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->show()V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v2, "ScreenCoverSurface"

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0xf4241

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/wm/DualScreenTransition;->getFreezeTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/DualScreenTransition$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v9

    mul-int/lit16 v0, v9, 0x2710

    add-int/lit8 v5, v0, -0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v2, "ScreenCoverSurface"

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0xf4241

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "DualScreenTransition"

    const-string v1, "Unable to allocate freeze surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez p1, :cond_6

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_6
    throw v0

    :cond_7
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v9

    mul-int/lit16 v0, v9, 0x2710

    add-int/lit8 v5, v0, -0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v2, "TransitTargetSurface"

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v0, 0xf4242

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->show()V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method getTransition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    return v0
.end method

.method getWaitingAppTokenDrawn()Lcom/android/server/wm/AppWindowToken;
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWaitingAppTokenDrawn() : mWatingAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method getWaitingScreenDrawn()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 4

    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWaitingScreenDrawn() : mFromDisplay d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method hasScreenshot()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasScreenshot() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimating()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->hasAnimations()Z

    move-result v0

    return v0
.end method

.method isTransitionEqual(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kill()V
    .locals 7

    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kill!  caller=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-lez v4, :cond_7

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0xc8

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set layer order to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mTransitTargetWindowMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surface is already released. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_4
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "DualScreenTransition"

    const-string v6, "cleared mTransitTargetSurfaceControls"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v4

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_6
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "DualScreenTransition"

    const-string v5, "cleared mTransitTargetSurfaceControls"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method

.method loadAnimation()Landroid/view/animation/Animation;
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v13, 0x65

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage()I

    move-result v6

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage()I

    move-result v5

    sget-boolean v7, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DualScreenTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadAnimation() transitionToString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v9}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transitTargetWidthOnAnimStage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transitTargetHeightOnAnimStage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_7

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    if-ne v7, v13, :cond_1

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const-string v7, "DualScreenTransition"

    const-string/jumbo v8, "loadAnimation() : animation is not loaded !!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v14, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :cond_2
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    iget v8, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    sget-boolean v7, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v7, :cond_13

    instance-of v7, v1, Landroid/view/animation/AnimationSet;

    if-eqz v7, :cond_11

    move-object v3, v1

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :pswitch_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_3

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    neg-float v7, v7

    invoke-direct {v4, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    invoke-direct {v4, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :pswitch_1
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    if-ne v7, v13, :cond_1

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_4

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v4, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v4, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :pswitch_2
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_5

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    invoke-direct {v4, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    move-object v1, v3

    goto/16 :goto_0

    :cond_5
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    neg-float v7, v7

    invoke-direct {v4, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :pswitch_3
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    if-ne v7, v13, :cond_1

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_6

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v4, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    move-object v1, v3

    goto/16 :goto_0

    :cond_6
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v4, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_7
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_c

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v7, :pswitch_data_1

    const-string v7, "DualScreenTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_8

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    invoke-direct {v1, v7, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v7, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_5
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_9

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v10, v10, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v1, v10, v10, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_a

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v7, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v1, v7, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_7
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_b

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v1, v10, v10, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v10, v10, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_c
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v7, :pswitch_data_2

    const-string v7, "DualScreenTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_d

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    neg-float v7, v7

    invoke-direct {v1, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    invoke-direct {v1, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_9
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_e

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v1, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_a
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_f

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    invoke-direct {v1, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_f
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v6

    neg-float v7, v7

    invoke-direct {v1, v10, v7, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_b
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v7, v11, :cond_10

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    neg-float v7, v7

    invoke-direct {v1, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_10
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v5

    invoke-direct {v1, v10, v10, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_12
    :goto_6
    sget-boolean v7, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v7, :cond_18

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    if-lez v7, :cond_18

    instance-of v7, v1, Landroid/view/animation/AnimationSet;

    if-eqz v7, :cond_15

    move-object v3, v1

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_7

    :cond_13
    instance-of v7, v1, Landroid/view/animation/AnimationSet;

    if-eqz v7, :cond_14

    move-object v3, v1

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_8

    :cond_14
    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_6

    :cond_15
    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_16
    sget-boolean v7, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v7, :cond_17

    const-string v7, "DualScreenTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animation : duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_9
    return-object v1

    :cond_18
    instance-of v7, v1, Landroid/view/animation/AnimationSet;

    if-eqz v7, :cond_19

    move-object v3, v1

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_a

    :cond_19
    const-wide/16 v8, 0x190

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1a
    sget-boolean v7, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v7, :cond_17

    const-string v7, "DualScreenTransition"

    const-string v8, "animation : duration=400"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method overrideTransition(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Z)V
    .locals 17

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrideTransition() : currentTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v4}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->canOverrideTransition(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "overrideTransition() : overriding transition is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fromDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animStageDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const/16 v2, 0x65

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->updateDisplayInfos()V

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v15

    mul-int/lit16 v2, v15, 0x2710

    add-int/lit8 v7, v2, -0x1

    const/4 v14, 0x0

    const/16 v2, 0x12c

    if-ne v13, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v4, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v2, 0xf4242

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceControl;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    if-nez p5, :cond_1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    goto/16 :goto_1

    :catch_0
    move-exception v9

    :try_start_1
    const-string v2, "DualScreenTransition"

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-nez p5, :cond_8

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_8
    throw v2
.end method

.method removeTransitTargetWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 8

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTransitTargetWindowLocked() : removing... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTransitTargetWindowLocked() : checking... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v4, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTransitTargetWindowLocked() : removed... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetWindowMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method reportWaitingScreenDrawn()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportWaitingScreenDrawn() mWatingScreenDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    return-void
.end method

.method setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRotationInTransaction() rotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mNextTransition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_4

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    invoke-static {p2, v10}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**** ROTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_1

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-static {p2, v10}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**** ROTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage()I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage()I

    move-result v3

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_0

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v11, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v5

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)V

    goto :goto_2

    :pswitch_0
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-eq v6, v11, :cond_6

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v12, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v3

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-eq v6, v11, :cond_6

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v12, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v5

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :pswitch_2
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v11, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v3

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v12, :cond_6

    goto :goto_1

    :cond_8
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    if-ne v6, v12, :cond_6

    goto :goto_1

    :cond_9
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_b

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    invoke-static {p2, v10}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**** ROTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)V

    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_1

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_0

    :cond_c
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_e

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    invoke-static {p2, v10}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v0

    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**** ROTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v6, :cond_1

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setTransition(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    return-void
.end method

.method shouldFreezeScreen()Z
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFreezeScreen() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mWatingScreenDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWatingAppToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stepAnimationLocked(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: no animations running"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: starting animation, setting start time"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DualScreenTransition;->stepAnimation(J)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DualScreenTransition {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTransitTargetSurfaceControl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mScreenCoverSurfaceControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public transitTypeToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_TRANSLATE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method updateSurfacesInTransaction()V
    .locals 7

    iget-boolean v5, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "DualScreenTransition"

    const-string v6, "Transit animations done, hiding TransitTarget screenshot surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    :try_start_0
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->hide()V

    :cond_5
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE:Z

    if-eqz v5, :cond_7

    const-string v5, "dev.ds.transit.freeze"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetSurfaceControls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTrasitFinalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;F)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method waitAppTokenDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitAppTokenDrawn() : appToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method

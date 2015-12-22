.class Lcom/android/settings/accessibility/MagnifierSurfaceView$2;
.super Ljava/lang/Object;
.source "MagnifierSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;->injectAccessibilityMotionEvent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/high16 v17, -0x80000000

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v0, v6, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v0, v6, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    move/from16 v23, v0

    new-instance v18, Landroid/app/Instrumentation;

    invoke-direct/range {v18 .. v18}, Landroid/app/Instrumentation;-><init>()V

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v21, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v21 .. v21}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v21

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v6, 0x0

    aput-object v21, v8, v6

    const/4 v6, 0x1

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v20, v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

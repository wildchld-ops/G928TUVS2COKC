.class Lcom/android/server/wm/TaskStack$BlackBackground;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackBackground"
.end annotation


# static fields
.field static final DEBUG_BG:Z = false

.field static final TAG_BG:Ljava/lang/String; = "TaskStack::BlackBackground"


# instance fields
.field mBaseWindow:Lcom/android/server/wm/WindowState;

.field mBlackSurface:Lcom/android/server/wm/DimLayer;

.field mBottomLayer:I

.field mBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DimLayer;

    const-string v1, "BlackBackground"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method animateBlackBackground()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack$BlackBackground;->hide()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v3, 0x1

    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v4, 0x1

    :goto_3
    if-eqz v8, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v12, :cond_3

    if-eqz v7, :cond_7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack$BlackBackground;->hide()V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v12, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v12, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v9

    :cond_8
    if-eqz v9, :cond_9

    iget v12, v9, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack$BlackBackground;->hide()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    if-ne v12, v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-nez v12, :cond_0

    :cond_a
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_0
.end method

.method destroySurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    return-void
.end method

.method hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    :cond_0
    return-void
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .locals 5

    const/4 v4, -0x1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iput v4, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    if-eq v2, v4, :cond_3

    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v2, v3, :cond_2

    :cond_3
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v3, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v2, v3, :cond_0

    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method setBound(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

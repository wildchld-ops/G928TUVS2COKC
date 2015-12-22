.class final Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field private mConsumeHoverEvent:Z

.field private mFixedRatio:F

.field private mGuideViewBound:Landroid/graphics/Rect;

.field private mIsResize:Z

.field private mLastCorner:Z

.field private mLastHoverEdge:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$8800(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    return p1
.end method

.method private adjustPenWindowSize(Landroid/graphics/Rect;F)V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x3

    const/4 v6, -0x1

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-ge v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    const/4 v6, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_2
    const/4 v6, 0x2

    :cond_5
    :goto_3
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_6

    packed-switch v6, :pswitch_data_0

    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    if-ge v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_5
    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    :cond_9
    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    :cond_d
    :goto_7
    const/4 v6, 0x3

    goto/16 :goto_3

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    :cond_f
    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    :cond_10
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :cond_11
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v6, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawFocusBorder(Landroid/graphics/Canvas;II)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->setDrawOption(I)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->setDrawOption(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v5, :cond_5

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v5, :cond_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v4, v1, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawUnfocusBorder(Landroid/graphics/Canvas;III)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initResizePenWindow()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z
    invoke-static {v4, v3, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Point;Z)Z

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-ne v2, v6, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z
    invoke-static {v4, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)Z

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private isExceededLimitTop(Landroid/graphics/Rect;)Z
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    if-le v0, v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 11

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v7, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x800

    invoke-virtual {p3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    :cond_1
    const/4 v3, 0x0

    if-eqz p1, :cond_f

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-lt v5, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    if-le v5, v6, :cond_4

    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    if-gez v0, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    if-le v5, v6, :cond_7

    if-nez v3, :cond_5

    if-eqz p1, :cond_7

    if-lez v1, :cond_7

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_6
    const/4 v3, 0x1

    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    if-eqz p1, :cond_c

    if-eqz v3, :cond_c

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v5, v4

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v2, v5, :cond_a

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eq v5, v6, :cond_d

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_16

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_e
    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    :goto_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    if-le v5, v6, :cond_4

    if-nez v3, :cond_11

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    :cond_11
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v5, v6, :cond_12

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_13
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_14
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    :cond_15
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v2

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_16
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :cond_17
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v5, v6, :cond_18

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v5, v6, :cond_18

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v7, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_18
    if-eqz p1, :cond_1a

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-eq v5, v6, :cond_19

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ne v5, v6, :cond_1a

    :cond_19
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v7, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_1a
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gt v5, v6, :cond_1b

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v5, v6, :cond_1c

    :cond_1b
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_1c
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v7, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/16 v8, 0x65

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3902(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_2
    return v7

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "MultiPhoneWindow"

    const-string v8, "Failed to change Pen Point to MOUSEICON_DEFAULT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1d

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v8, 0x20000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    packed-switch v7, :pswitch_data_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->setFilter(I)V

    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v2

    if-nez v4, :cond_12

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v7, v3, :cond_12

    if-nez v2, :cond_12

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v5, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/16 v8, 0x9

    if-gt v7, v8, :cond_8

    :cond_7
    if-eqz v5, :cond_b

    const/16 v1, 0x65

    :cond_8
    :goto_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    :cond_9
    :goto_6
    if-lez v1, :cond_a

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3902(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I

    if-eqz v5, :cond_1f

    const/4 v7, -0x1

    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto/16 :goto_2

    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_3

    :cond_b
    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v5, :cond_d

    const/16 v1, 0x6b

    :goto_8
    goto :goto_5

    :cond_d
    const/4 v1, 0x7

    goto :goto_8

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v5, :cond_f

    const/16 v1, 0x6a

    :goto_9
    goto :goto_5

    :cond_f
    const/4 v1, 0x6

    goto :goto_9

    :cond_10
    if-eqz v5, :cond_11

    const/16 v1, 0x65

    :goto_a
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_5

    :cond_11
    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    if-nez v4, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    if-eq v7, v2, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v5, :cond_14

    const/16 v1, 0x6d

    :cond_13
    :goto_b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_6

    :cond_14
    const/16 v1, 0x9

    goto :goto_b

    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_16

    const/16 v1, 0x6c

    :goto_c
    goto :goto_b

    :cond_16
    const/16 v1, 0x8

    goto :goto_c

    :cond_17
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v5, :cond_18

    const/16 v1, 0x6c

    :goto_d
    goto :goto_b

    :cond_18
    const/16 v1, 0x8

    goto :goto_d

    :cond_19
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_1a

    const/16 v1, 0x6d

    :goto_e
    goto :goto_b

    :cond_1a
    const/16 v1, 0x9

    goto :goto_e

    :cond_1b
    if-eqz v5, :cond_1c

    const/16 v1, 0x65

    :goto_f
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_b

    :cond_1c
    const/4 v1, 0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_9

    if-eqz v5, :cond_1e

    const/16 v1, 0x65

    :goto_10
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    goto/16 :goto_6

    :cond_1e
    const/4 v1, 0x1

    goto :goto_10

    :cond_1f
    const/4 v7, -0x1

    :try_start_2
    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v7, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2102(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V
    invoke-static {v7, v6, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v8, 0x20000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    packed-switch v7, :pswitch_data_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->setFilter(I)V

    :cond_7
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getCocktailBarRect()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getCocktailBarRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getCocktailBarRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->initResizePenWindow()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->setFilter(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_c

    const v7, 0x8000

    invoke-virtual {v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    move v1, v6

    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v7, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2102(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    iput v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v7, v8, :cond_13

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gtz v7, :cond_15

    :cond_13
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v7, v8, :cond_14

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-gtz v7, :cond_15

    :cond_14
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v7, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->updatePosition()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_17
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_0

    :cond_18
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onAttachedToWindow()V

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v3, "onAttachedToWindow"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v3, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow, mActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iput-object v3, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eq p1, v1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "MultiPhoneWindow"

    const-string v2, "ignore setBackgroundDrawable for minimized floating app"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V

    goto :goto_0
.end method

.method protected updateMultiPhoneWindowLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    :cond_3
    return-void
.end method

.class public Lcom/sec/daliviews/views/ResizeFrame;
.super Lcom/sec/daliviews/views/ClippedContainerView;
.source "ResizeFrame.java"


# instance fields
.field private mCurrentResizeView:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/ResizeFrame;->mCurrentResizeView:Lcom/sec/daliviews/views/NativeViewBase;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ResizeFrame;->setLayerLocation(I)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/daliviews/views/ResizeFrame;->mCurrentResizeView:Lcom/sec/daliviews/views/NativeViewBase;

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ResizeFrame:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ResizeFrame_borderOuterSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ResizeFrame;->setBorderOuterSpacing(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ResizeFrame;->setLayerLocation(I)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    return-void
.end method

.method private native handleLongPress(J)V
.end method

.method private native setBorderNinePatchImages(JLandroid/graphics/Bitmap;IIIILandroid/graphics/Bitmap;IIII)V
.end method

.method private native setBorderOuterSpacing(JI)V
.end method

.method private native setBorderView(JJ)V
.end method

.method private native setBottomHandle(JJ)V
.end method

.method private native setBottomLeftHandle(JJ)V
.end method

.method private native setBottomRightHandle(JJ)V
.end method

.method private native setCornerImages(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setLeftHandle(JJ)V
.end method

.method private native setRightHandle(JJ)V
.end method

.method private native setSideImages(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setTopHandle(JJ)V
.end method

.method private native setTopLeftHandle(JJ)V
.end method

.method private native setTopRightHandle(JJ)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public performLongClick()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/daliviews/views/ResizeFrame;->mCurrentResizeView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->handleLongPress(J)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->performLongClick()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBorderNinePatchImages(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    invoke-direct/range {v3 .. v15}, Lcom/sec/daliviews/views/ResizeFrame;->setBorderNinePatchImages(JLandroid/graphics/Bitmap;IIIILandroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public setBorderOuterSpacing(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ResizeFrame;->setBorderOuterSpacing(JI)V

    return-void
.end method

.method public setBorderView(Lcom/sec/daliviews/views/ResizeFrameBorder;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameBorder;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setBorderView(JJ)V

    return-void
.end method

.method public setBottomHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setBottomHandle(JJ)V

    return-void
.end method

.method public setBottomLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setBottomLeftHandle(JJ)V

    return-void
.end method

.method public setBottomRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setBottomRightHandle(JJ)V

    return-void
.end method

.method public setCornerImages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ResizeFrame;->setCornerImages(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setLeftHandle(JJ)V

    return-void
.end method

.method public setRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setRightHandle(JJ)V

    return-void
.end method

.method public setSideImages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ResizeFrame;->setSideImages(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTopHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setTopHandle(JJ)V

    return-void
.end method

.method public setTopLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setTopLeftHandle(JJ)V

    return-void
.end method

.method public setTopRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ResizeFrame;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrameHandle;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ResizeFrame;->setTopRightHandle(JJ)V

    return-void
.end method

.method public updateResizeView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/ResizeFrame;->mCurrentResizeView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

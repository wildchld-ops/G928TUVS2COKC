.class public Lcom/sec/android/app/launcher/views/HomeResizeFrame;
.super Lcom/sec/daliviews/views/ResizeFrame;
.source "HomeResizeFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ResizeFrame;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameBorder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBorderView(Lcom/sec/daliviews/views/ResizeFrameBorder;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setTopLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setTopRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBottomLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBottomRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setLeftHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setRightHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setTopHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_8
    check-cast p1, Lcom/sec/daliviews/views/ResizeFrameHandle;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBottomHandle(Lcom/sec/daliviews/views/ResizeFrameHandle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b010b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBorderNinePatchImages(Landroid/content/Context;II)V
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p3, v3}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBorderNinePatchImages(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCornerImages(Landroid/content/Context;II)V
    .locals 2

    invoke-static {p2}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setCornerImages(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSideImages(Landroid/content/Context;II)V
    .locals 2

    invoke-static {p2}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setSideImages(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

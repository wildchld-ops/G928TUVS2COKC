.class public Lcom/ime/framework/engine/bsthwr/BoxHWView;
.super Lcom/ime/framework/engine/bsthwr/TransparentView;
.source "BoxHWView.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mDimBoxHandwriteView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/engine/bsthwr/TransparentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "BoxHWView"

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->DEBUG:Z

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->mDimBoxHandwriteView:Z

    const-string v0, "BoxHWView"

    const-string v1, "----BoxHWView---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->mDimBoxHandwriteView:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x60000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->y:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->mSpeed:I

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->startRecognize(I)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->invalidate()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDimState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/bsthwr/BoxHWView;->mDimBoxHandwriteView:Z

    return-void
.end method

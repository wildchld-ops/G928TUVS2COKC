.class Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    const/4 v2, 0x1

    # setter for: Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->access$3202(Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;Z)Z

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v2, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v2, v2, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v1, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v1, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v2, v2, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v3, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v3, v3, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v1, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v1, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v2, v2, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerEmptyRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setTransparentRegion(Landroid/graphics/Region;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;->this$1:Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;

    iget-object v1, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

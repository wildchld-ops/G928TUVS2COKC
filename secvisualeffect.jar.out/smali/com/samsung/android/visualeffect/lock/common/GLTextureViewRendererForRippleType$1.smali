.class Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;
.super Ljava/lang/Object;
.source "GLTextureViewRendererForRippleType.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForLandscape:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForLandscape:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "mDefaultRunnable run, and ripple()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->ripple(FFF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultX:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultY:F

    float-to-int v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_onTouch(IIIF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mDefaultRunnable:Ljava/lang/Runnable;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForPortrait:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForPortrait:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v3, v3, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because drawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget v2, v2, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDefaultRunnable, postDelayed()!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;->this$0:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mDefaultRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

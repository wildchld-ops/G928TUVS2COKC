.class Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;
.super Landroid/os/Handler;
.source "AbstractWaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    iget v1, v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectWidth:I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->effectHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->invalidate(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->isAnimatorRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

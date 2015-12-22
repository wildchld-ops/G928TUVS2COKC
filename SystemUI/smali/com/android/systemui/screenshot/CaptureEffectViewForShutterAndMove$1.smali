.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterAndMove.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->show(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "CaptureEffectViewForShutterAndMove"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mTranslateDuration:I
    invoke-static {v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)I

    move-result v2

    add-int/lit16 v0, v2, 0x190

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

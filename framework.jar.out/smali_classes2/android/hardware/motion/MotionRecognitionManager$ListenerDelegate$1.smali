.class Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .locals 2

    new-instance v0, Landroid/hardware/motion/MREvent;

    invoke-direct {v0}, Landroid/hardware/motion/MREvent;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getTilt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDz()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDz(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDxImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDxImage(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDyImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDyImage(I)V

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getPanningDzImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDzImage(I)V

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/motion/MRListener;->onMotionListener(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

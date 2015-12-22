.class Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
.super Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/motion/MRListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private mMotionEvents:I

.field final synthetic this$0:Lcom/samsung/android/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/motion/MotionRecognitionManager;

    invoke-direct {p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    const/16 v1, 0x35

    iput v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->EVENT_FROM_SERVICE:I

    iput-object p2, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    iput p3, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    # getter for: Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionEvents()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return v0
.end method

.method public motionCallback(Lcom/samsung/android/motion/MREvent;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMotionEvents(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return-void
.end method

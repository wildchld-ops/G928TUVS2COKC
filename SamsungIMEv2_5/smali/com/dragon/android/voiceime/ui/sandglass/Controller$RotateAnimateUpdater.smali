.class Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/ui/sandglass/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateAnimateUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;


# direct methods
.method private constructor <init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;Lcom/dragon/android/voiceime/ui/sandglass/Controller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;-><init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    # getter for: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mbStopped:Z
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$500(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    # invokes: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->playDrop(II)V
    invoke-static {v0, v1, v2}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$700(Lcom/dragon/android/voiceime/ui/sandglass/Controller;II)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

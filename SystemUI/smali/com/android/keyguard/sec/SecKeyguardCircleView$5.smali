.class Lcom/android/keyguard/sec/SecKeyguardCircleView$5;
.super Ljava/lang/Object;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$202(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

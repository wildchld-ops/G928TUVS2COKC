.class Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    # invokes: Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_0
    return-void
.end method

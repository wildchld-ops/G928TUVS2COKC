.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

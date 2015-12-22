.class Lcom/android/keyguard/sec/KeyguardUnlockView$7;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const-string v2, "KeyguardUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-interface {v2, v4, v5, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

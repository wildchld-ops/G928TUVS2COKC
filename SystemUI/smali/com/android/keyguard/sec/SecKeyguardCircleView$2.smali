.class Lcom/android/keyguard/sec/SecKeyguardCircleView$2;
.super Ljava/lang/Object;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;


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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shortcutReset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    :cond_0
    return-void
.end method

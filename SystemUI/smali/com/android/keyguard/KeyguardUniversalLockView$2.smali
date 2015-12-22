.class Lcom/android/keyguard/KeyguardUniversalLockView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$2;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mEMAPress:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$702(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    return-void
.end method

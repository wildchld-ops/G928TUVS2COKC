.class Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;
.super Ljava/lang/Object;
.source "SecKeyguardEmergencyDummyCircle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

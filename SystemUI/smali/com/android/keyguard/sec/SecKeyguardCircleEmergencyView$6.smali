.class Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;
.super Ljava/lang/Object;
.source "SecKeyguardCircleEmergencyView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takePhoneShortcut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

.field final synthetic val$isSecure:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    iput-boolean p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->val$isSecure:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

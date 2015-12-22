.class Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;
.super Ljava/lang/Object;
.source "SecKeyguardCircleCameraView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$secure:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;Landroid/content/Intent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$secure:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

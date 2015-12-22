.class Lcom/android/keyguard/sec/KeyguardSignatureView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEMAPress:Z

    return-void
.end method

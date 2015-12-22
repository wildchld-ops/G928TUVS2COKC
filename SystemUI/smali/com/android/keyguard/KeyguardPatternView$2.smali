.class Lcom/android/keyguard/KeyguardPatternView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$102(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    return-void
.end method

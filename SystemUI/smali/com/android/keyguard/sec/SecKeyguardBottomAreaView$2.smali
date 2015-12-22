.class Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCMASChanged()V
    .locals 2

    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "onCMASChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->updateCMASText()V

    return-void
.end method

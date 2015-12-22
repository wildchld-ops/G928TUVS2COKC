.class Lcom/android/keyguard/sec/KeyguardSplitClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSplitClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSplitClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSplitClockView;->updatePatterns()V
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$000(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSplitClockView;->updateChildView()V
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$100(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    goto :goto_0
.end method

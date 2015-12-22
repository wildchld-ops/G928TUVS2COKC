.class Lcom/android/keyguard/sec/KeyguardSplitClockView$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSplitClockView;->handleDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$200(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSplitClockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSplitClockView;->handleShowClockAndDateOnSettingChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->access$300(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

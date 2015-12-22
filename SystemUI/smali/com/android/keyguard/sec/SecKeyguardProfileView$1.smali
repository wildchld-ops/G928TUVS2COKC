.class Lcom/android/keyguard/sec/SecKeyguardProfileView$1;
.super Landroid/os/Handler;
.source "SecKeyguardProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateProfile()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$000(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$100(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleClockOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$200(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

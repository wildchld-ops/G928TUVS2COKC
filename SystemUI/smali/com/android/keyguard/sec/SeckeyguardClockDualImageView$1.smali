.class Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;
.super Landroid/os/Handler;
.source "SeckeyguardClockDualImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

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
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$000(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleShowClockDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$100(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockStyle()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockStyle()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

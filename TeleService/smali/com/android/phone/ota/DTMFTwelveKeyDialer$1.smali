.class Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ota/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/ota/DTMFTwelveKeyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    # getter for: Lcom/android/phone/ota/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/ota/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ota/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

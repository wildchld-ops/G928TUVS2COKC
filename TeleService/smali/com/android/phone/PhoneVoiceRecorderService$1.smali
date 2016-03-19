.class Lcom/android/phone/PhoneVoiceRecorderService$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneVoiceRecorderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/PhoneVoiceRecorderService;

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
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/PhoneVoiceRecorderService;

    const-string v1, "INFO_STATE_CHANGED"

    # invokes: Lcom/android/phone/PhoneVoiceRecorderService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVoiceRecorderService;->access$000(Lcom/android/phone/PhoneVoiceRecorderService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/PhoneVoiceRecorderService;

    const/16 v1, 0x64

    # invokes: Lcom/android/phone/PhoneVoiceRecorderService;->sendMessageCallback(I)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVoiceRecorderService;->access$100(Lcom/android/phone/PhoneVoiceRecorderService;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

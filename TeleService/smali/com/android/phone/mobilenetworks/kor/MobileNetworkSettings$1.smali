.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;
.super Landroid/os/Handler;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_network_status"

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$000(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v1, "MobileNetworkSettings"

    const-string v2, "Exception occured while trying to set network status"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_network_status"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I
    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$002(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;I)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$100(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$000(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

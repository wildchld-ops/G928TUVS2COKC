.class Lcom/android/phone/callsettings/AutoRejectPreference$3;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"

# interfaces
.implements Lcom/android/phone/callsettings/CBarringMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SET_ACBARRING_COMPLETE CBarringMessageListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$600(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    # getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$700(Lcom/android/phone/callsettings/AutoRejectPreference;)Lcom/android/phone/callsettings/KddiCBarring;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    const-string v2, "illegal transition from NETWORK_ERROR"

    # invokes: Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$600(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_ACBARRING_COMPLETE CBarringMessageListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$600(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    # getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$800(Lcom/android/phone/callsettings/AutoRejectPreference;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    # getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$800(Lcom/android/phone/callsettings/AutoRejectPreference;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    const-string v2, "EVENT_GET_ACBARRING_COMPLETE data failed "

    # invokes: Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$600(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$3;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    # getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$800(Lcom/android/phone/callsettings/AutoRejectPreference;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

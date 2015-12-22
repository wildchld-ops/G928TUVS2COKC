.class Lcom/android/phone/callsettings/KddiCallPrevention$13;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Lcom/android/phone/callsettings/CBarringMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_ICBARRING_COMPLETE CBarringMessageListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->makeBaseData(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$700(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->updateListICB(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$800(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->makeScreen()V
    invoke-static {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$900(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1002(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z
    invoke-static {v1, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$402(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get icb mUnLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1000(Lcom/android/phone/callsettings/KddiCallPrevention;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z
    invoke-static {v1, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1002(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SET_ICBARRING_COMPLETE CBarringMessageListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;
    invoke-static {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1100(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/phone/callsettings/KddiCBarring;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "illegal transition"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v1, v1, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$13;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v1, v1, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CDMA"

    const-string v4, "gsm.sim.sixmode"

    iget-object v5, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;
    invoke-static {v5}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Lcom/android/settings/multisim/MultiSimTabHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    const-string v6, "GSM"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/ApnSettings;->access$1300(Lcom/android/settings/ApnSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_1

    const-string v1, "current"

    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;
    invoke-static {v3}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Lcom/android/settings/multisim/MultiSimTabHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v3

    if-ne v3, v8, :cond_0

    const-string v1, "current1"

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$1400()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;
    invoke-static {v4}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Lcom/android/settings/multisim/MultiSimTabHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSubId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;
    invoke-static {v5}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Lcom/android/settings/multisim/MultiSimTabHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RESTORE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    new-instance v4, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;-><init>(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)V

    # setter for: Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/android/settings/ApnSettings;->access$502(Lcom/android/settings/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/ApnSettings;->access$600(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    # getter for: Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$1500()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

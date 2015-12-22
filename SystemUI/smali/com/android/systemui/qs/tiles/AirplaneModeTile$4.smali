.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->mSubId:I

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I
    invoke-static {v4, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    move-result v2

    const-string v7, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onServiceStateChanged("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " MSim "

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    aput v7, v4, v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v4

    aget v4, v4, v6

    if-ne v4, v9, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v4

    aget v4, v4, v0

    if-ne v4, v9, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v4

    aget v4, v4, v6

    if-ne v4, v9, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->EVR:Z

    if-eqz v4, :cond_9

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v5

    :goto_3
    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1500()Z

    move-result v4

    if-nez v4, :cond_5

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1600()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_a

    move v3, v5

    :cond_6
    :goto_4
    const-string v4, "AirplaneModeTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPhoneStateListener - inAirplaneMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "AirplaneModeTile"

    const-string v7, "Alert Dialog is showing"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1702(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "AirplaneModeTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", DB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_7

    move v6, v5

    :cond_7
    if-ne v3, v6, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v3, :cond_c

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J
    invoke-static {v4, v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1902(Lcom/android/systemui/qs/tiles/AirplaneModeTile;J)J

    :cond_8
    return-void

    :cond_9
    move v1, v6

    goto/16 :goto_3

    :cond_a
    move v3, v6

    goto/16 :goto_4

    :cond_b
    const-string v4, "AirplaneModeTile"

    const-string v7, "Alert Dialog is not showing"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1702(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    goto :goto_5

    :cond_c
    const/4 v5, 0x2

    goto :goto_6
.end method

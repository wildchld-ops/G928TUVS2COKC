.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v7, :cond_1

    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "READY"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v3

    aget v3, v3, v6

    const-string/jumbo v4, "gsm.sim.state"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "READY"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v3

    aget v3, v3, v6

    const-string/jumbo v4, "gsm.sim.state"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    aget v1, v2, v6

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    aget v1, v2, v6

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    const-string v2, "ABSENT"

    const-string/jumbo v3, "gsm.sim.state"

    const-string v4, ""

    invoke-static {v3, v6, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "READY"

    const-string/jumbo v3, "gsm.sim.state"

    const-string v4, ""

    invoke-static {v3, v7, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    aget v1, v2, v6

    goto :goto_0

    :pswitch_0
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .locals 2

    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method

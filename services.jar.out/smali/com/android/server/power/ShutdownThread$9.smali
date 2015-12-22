.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    const-string v19, "ShutdownThread"

    const-string v20, "!@Start shutdown radios"

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "sys.deviceOffReq"

    const-string v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "sys.radio.shutdown"

    const-string/jumbo v20, "true"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string/jumbo v19, "nfc"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v12

    const-string/jumbo v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    const-string v19, "bluetooth_manager"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const-string v19, "ShutdownThread"

    const-string v20, "Disabling WiFi..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/16 v19, 0xe6

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    const-string v19, "ShutdownThread"

    const-string v20, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    :cond_2
    const/4 v13, 0x1

    :goto_1
    if-nez v13, :cond_3

    const-string v19, "ShutdownThread"

    const-string v20, "Turning off NFC..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    const/4 v6, 0x1

    if-eqz v14, :cond_5

    :try_start_2
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v19

    if-nez v19, :cond_e

    :cond_5
    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_6

    const-string v19, "ShutdownThread"

    const-string v20, "Turning off cellular radios..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_5
    const-string v19, "ShutdownThread"

    const-string v20, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-gez v19, :cond_b

    const-string v19, "ShutdownThread"

    const-string v20, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_7

    :try_start_3
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v19

    if-nez v19, :cond_f

    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_7

    const-string v19, "ShutdownThread"

    const-string v20, "!@Radio turned off."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v19, "ShutdownThread"

    const-string v20, "Skip wait for modem state off."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    const-string/jumbo v19, "ril.modem.board"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v19, "XMM"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string/jumbo v19, "ril.deviceOffRes"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v19, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "ShutdownThread"

    const-string v20, "!@PhoneOff req resp"

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_8
    const-string v19, "DCGS"

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string/jumbo v19, "ril.deviceOffRes"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "ril.deviceOffRes2"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "ShutdownThread"

    const-string v20, "!@PhoneOff req resp"

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_9
    if-nez v13, :cond_a

    :try_start_4
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    :goto_8
    if-eqz v13, :cond_a

    const-string v19, "ShutdownThread"

    const-string v20, "!@NFC turned off."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v15, :cond_11

    if-eqz v6, :cond_11

    if-eqz v13, :cond_11

    if-eqz v10, :cond_11

    const-string v19, "ShutdownThread"

    const-string v20, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput-boolean v21, v19, v20

    :cond_b
    return-void

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const-string v19, "ShutdownThread"

    const-string v20, "RemoteException during NFC shutdown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const-string v19, "ShutdownThread"

    const-string v20, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_3

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v9

    const-string v19, "ShutdownThread"

    const-string v20, "RemoteException during radio shutdown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_7

    :catch_3
    move-exception v9

    const-string v19, "ShutdownThread"

    const-string v20, "RemoteException during radio shutdown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v15, 0x1

    goto/16 :goto_7

    :cond_10
    const/4 v13, 0x0

    goto :goto_8

    :catch_4
    move-exception v9

    const-string v19, "ShutdownThread"

    const-string v20, "RemoteException during NFC shutdown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto :goto_8

    :cond_11
    const-string v19, "ShutdownThread"

    const-string v20, "!@before sleep"

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x1f4

    :try_start_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    const-string v19, "ShutdownThread"

    const-string v20, "!@after sleep"

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v19, "ShutdownThread"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!@[Phone off retry:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " radio="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bluetooth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " nfcOff="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " WiFiOff="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " modem="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_5
    move-exception v8

    const-string v19, "ShutdownThread"

    const-string v20, "InterruptedException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9
.end method

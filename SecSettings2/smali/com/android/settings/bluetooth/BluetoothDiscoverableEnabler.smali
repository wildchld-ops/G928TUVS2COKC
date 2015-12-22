.class final Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"


# static fields
.field private static mTimeoutSecs:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiscoverable:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mPolicyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const-string v1, "BluetoothDiscoverableEnabler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    return-void
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    const/4 v3, -0x1

    sget v2, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    if-eq v2, v3, :cond_0

    sget v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    :goto_0
    return v0

    :cond_0
    const-string v2, "debug.bt.discoverable_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "bt_discoverable_timeout"

    const-string v4, "never"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    sput v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    goto :goto_0

    :cond_2
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xe10

    goto :goto_1

    :cond_3
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x12c

    goto :goto_1

    :cond_4
    const/16 v0, 0x78

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-string v8, " User Interaction: User actionDiscoverable mode status has changed to discoverable succeeded"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eqz p1, :cond_7

    const-string v2, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isLimitedDiscoverableEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isLimitedDiscoverableEnabled"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    :cond_3
    const-string v8, " User Interaction: User actionDiscoverable mode status has changed to not discoverable succeeded"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :catch_0
    move-exception v11

    :try_start_1
    const-string v2, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v15}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v15

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    add-long v12, v4, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v12, v13}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v2, v4, v15}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    const-string v2, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v12, v13}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_6
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method handleModeChanged(I)V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleModeChanged(): mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isLimitedDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isLimitedDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v10, v11

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    if-nez v10, :cond_3

    const-string v0, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "severity"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "group"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "outcome"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "component"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message"

    const-string v2, "Attempt to set discoverable mode failed. Discoverable mode is restricted."

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v10, v12

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    iput-boolean v11, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    goto :goto_2

    :cond_4
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_7

    move v9, v11

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isLimitedDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isLimitedDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-eqz v0, :cond_8

    move v10, v11

    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_6
    if-eqz v10, :cond_1

    iput-boolean v12, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    goto/16 :goto_2

    :cond_7
    move v9, v12

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_4
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    move v10, v12

    goto :goto_5

    :catch_2
    move-exception v8

    :try_start_5
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public pause()V
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    move v8, v10

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isLimitedDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isLimitedDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    move v9, v10

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    if-nez v9, :cond_6

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    if-nez v0, :cond_6

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v8, v11

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move v9, v11

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_3
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4
.end method

.method public resume(Landroid/content/Context;)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    :cond_2
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isDiscoverableEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isLimitedDiscoverableEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isLimitedDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    if-nez v10, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_3
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    if-nez v11, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mPolicyEnabled:Z

    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_discoverable_timeout"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    sput v7, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    sget v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setLocalDiscoverableTimeout(I)V

    goto/16 :goto_0
.end method

.method public setDiscoverableEnable(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-eq v0, p1, :cond_0

    const-string v0, "BluetoothDiscoverableEnabler"

    const-string v1, "setEnable :: toggle enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    sput v1, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "never"

    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_discoverable_timeout"

    sget v3, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    return-void

    :pswitch_0
    const/16 v1, 0x78

    sput v1, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "twomin"

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x12c

    sput v1, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "fivemin"

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xe10

    sput v1, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "onehour"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setLocalDiscoverableTimeout(I)V
    .locals 3

    const/16 v1, 0x78

    if-ne p1, v1, :cond_1

    const-string v0, "twomin"

    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_2

    const-string v0, "fivemin"

    goto :goto_0

    :cond_2
    const/16 v1, 0xe10

    if-ne p1, v1, :cond_3

    const-string v0, "onehour"

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    const-string v0, "never"

    goto :goto_0
.end method

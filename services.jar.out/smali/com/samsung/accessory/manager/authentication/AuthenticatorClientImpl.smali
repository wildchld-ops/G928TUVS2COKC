.class public Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "AuthenticatorClientImpl.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true


# instance fields
.field private final COMMAND_ATQS:I

.field private final COMMAND_FIRMWARE:I

.field private final COMMAND_KEY_CHANGE:I

.field private final COMMAND_PUB_KEY:I

.field private final COMMAND_READ_ID:I

.field private final COMMAND_REQURL:I

.field private final COMMAND_SEC_PUB_KEY:I

.field private final COMMAND_VERIFICATION:I

.field private final COMMAND_WRITE_ID:I

.field private final RETRY_TIME:I

.field private final SW_FAIL:[B

.field private final SW_SECURITY_ATTACK:[B

.field private final SW_SUCCESS:[B

.field private volatile isInterrupted:Z

.field private mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field private mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field private randNum:[B

.field private statusWord:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->RETRY_TIME:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_ATQS:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_PUB_KEY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_VERIFICATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_WRITE_ID:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_READ_ID:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_FIRMWARE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_KEY_CHANGE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_SEC_PUB_KEY:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQURL:I

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    return-void

    :array_0
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method

.method private authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 9

    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-nez v5, :cond_0

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth()[B

    move-result-object v1

    if-eqz v1, :cond_c

    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received atqS Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v5, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_2
    array-length v5, v1

    if-ne v5, v4, :cond_7

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-ne v5, v4, :cond_4

    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v1, v4

    const/16 v5, -0x4f

    if-ne v4, v5, :cond_5

    const/16 v4, 0x15

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    const/16 v5, -0x4e

    if-ne v4, v5, :cond_6

    const/16 v4, 0x16

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    const/16 v5, -0x20

    if-ne v4, v5, :cond_3

    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_1

    :cond_7
    array-length v5, v1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v2

    :cond_8
    :goto_2
    if-nez v2, :cond_d

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "atqS fail, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_a
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "atqS is not correct"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_c
    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, " atqS is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v5

    if-nez v5, :cond_13

    const/4 v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x3

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x5

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_11

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_10

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Read id fail."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_11
    iget-boolean v5, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:Z

    if-ne v5, v4, :cond_12

    const/16 v5, 0x9

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_12

    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_12

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, "Url is not exist."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, "Success auth, call sendStopAuth()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange()Z

    move-result v5

    if-ne v5, v4, :cond_15

    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_14

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "need to key change, retry authentication throught chaeged key"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v5, 0x7

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-ne v2, v4, :cond_15

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setKeyChanged(Z)V

    :cond_15
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v5

    if-ne v5, v4, :cond_1b

    const/16 v5, 0x8

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x3

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x5

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_19

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_18

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Read id fail."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    goto/16 :goto_0

    :cond_19
    iget-boolean v5, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:Z

    if-ne v5, v4, :cond_1a

    const/16 v5, 0x9

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_1a

    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "url is not exist."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, "Success auth, call sendStopAuth()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    move v3, v4

    goto/16 :goto_0
.end method

.method private checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    return v1

    :cond_1
    array-length v2, p2

    if-ne v2, v5, :cond_4

    aget-byte v2, p2, v1

    if-ne v2, v5, :cond_2

    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_2
    aget-byte v2, p2, v1

    const/16 v3, -0x50

    if-ne v2, v3, :cond_3

    const/16 v2, 0x15

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_3
    aget-byte v2, p2, v1

    const/16 v3, -0x4e

    if-ne v2, v3, :cond_8

    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_4
    array-length v2, p2

    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    array-length v2, p2

    add-int/lit8 v2, v2, -0x3

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v4, 0x2

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status Word: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p3, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x18

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x17

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method private sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    if-ne v6, v9, :cond_1

    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "interrupted!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqFirmwareVersion()[B

    move-result-object v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    :try_start_0
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v2

    const/4 v1, 0x0

    if-ge v1, v9, :cond_2

    :try_start_1
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setPublicKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v2

    const/4 v1, 0x0

    if-ge v1, v9, :cond_2

    :try_start_2
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x0

    if-ge v1, v9, :cond_2

    :try_start_3
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->makeRandomNumber()[B

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getRandNum()[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    invoke-virtual {v6, v7}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->setRandNum([B)V

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v2

    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReadCoverId()[B

    move-result-object v2

    const/4 v1, 0x0

    if-ge v1, v9, :cond_4

    :try_start_4
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraId([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getKeyChange()[B

    move-result-object v2

    const/4 v1, 0x0

    if-ge v1, v9, :cond_5

    :try_start_5
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUrl()[B

    move-result-object v2

    const/4 v1, 0x0

    if-ge v1, v9, :cond_2

    :try_start_6
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([B)[B

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    :cond_6
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v2, "null"

    goto :goto_1
.end method

.method public onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0
.end method

.method onInterrupted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    return-void
.end method

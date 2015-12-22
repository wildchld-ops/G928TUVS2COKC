.class final enum Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;
.super Ljava/lang/Enum;
.source "EcholocateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SignalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum ECIO:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum RSCP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum RSRP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum RSRQ:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum RSSI:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum SINR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

.field public static final enum SNR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "RSSI"

    invoke-direct {v0, v1, v3}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSSI:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "RSCP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSCP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "ECIO"

    invoke-direct {v0, v1, v5}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ECIO:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "RSRP"

    invoke-direct {v0, v1, v6}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "RSRQ"

    invoke-direct {v0, v1, v7}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRQ:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "SINR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SINR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const-string v1, "SNR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SNR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSSI:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSCP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ECIO:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRQ:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SINR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SNR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->$VALUES:[Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;
    .locals 1

    const-class v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->$VALUES:[Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v0}, [Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    return-object v0
.end method

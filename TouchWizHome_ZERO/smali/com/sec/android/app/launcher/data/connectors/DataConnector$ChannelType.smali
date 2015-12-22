.class public final enum Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
.super Ljava/lang/Enum;
.source "DataConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

.field public static final enum CHANNEL_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

.field private static gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    const-string v1, "CHANNEL_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->CHANNEL_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->CHANNEL_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->$VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    invoke-static {}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->values()[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->$VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    return-object v0
.end method

.class public final enum Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
.super Ljava/lang/Enum;
.source "DataConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field public static final enum SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private static gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_FAVORITES"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_APPS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_WIDGETS"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_DISABLED_APPS"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_MENU_APPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const-string v1, "SOURCE_HOME_PAGES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->$VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->values()[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->gValues:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->$VALUES:[Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

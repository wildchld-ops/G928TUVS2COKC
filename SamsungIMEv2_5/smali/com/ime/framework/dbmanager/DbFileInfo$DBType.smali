.class final enum Lcom/ime/framework/dbmanager/DbFileInfo$DBType;
.super Ljava/lang/Enum;
.source "DbFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/DbFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DBType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/framework/dbmanager/DbFileInfo$DBType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

.field public static final enum HWR_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

.field public static final enum XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

.field public static final enum XT9_DOWNLOAD_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    const-string v1, "XT9_DEFAULT_DB"

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    new-instance v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    const-string v1, "XT9_DOWNLOAD_DB"

    invoke-direct {v0, v1, v3}, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DOWNLOAD_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    new-instance v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    const-string v1, "HWR_DB"

    invoke-direct {v0, v1, v4}, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->HWR_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    sget-object v1, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DOWNLOAD_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->HWR_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->$VALUES:[Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbFileInfo$DBType;
    .locals 1

    const-class v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    return-object v0
.end method

.method public static values()[Lcom/ime/framework/dbmanager/DbFileInfo$DBType;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->$VALUES:[Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    invoke-virtual {v0}, [Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    return-object v0
.end method

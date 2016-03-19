.class public final Lcom/myscript/atk/rmc/ResourceManagerContract;
.super Ljava/lang/Object;
.source "ResourceManagerContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/rmc/ResourceManagerContract$VersionInfo;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Resource;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Mode;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Langs;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Downloading;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Updates;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Engine;,
        Lcom/myscript/atk/rmc/ResourceManagerContract$Refresh;
    }
.end annotation


# static fields
.field private static mAuthority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.myscript.atk.rmc"

    sput-object v0, Lcom/myscript/atk/rmc/ResourceManagerContract;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAuthority()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/myscript/atk/rmc/ResourceManagerContract;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method protected static final setAuthority(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/myscript/atk/rmc/ResourceManagerContract;->mAuthority:Ljava/lang/String;

    return-void
.end method

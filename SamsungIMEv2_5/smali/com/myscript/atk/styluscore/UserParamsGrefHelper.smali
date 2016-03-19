.class public final Lcom/myscript/atk/styluscore/UserParamsGrefHelper;
.super Ljava/lang/Object;
.source "UserParamsGrefHelper.java"


# static fields
.field private static final idUserParamsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static upId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->idUserParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addUserParams(Ljava/lang/Object;)I
    .locals 3

    const-class v1, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->idUserParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->upId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserParams(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->idUserParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeUserParams(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->idUserParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

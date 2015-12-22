.class Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;
.super Ljava/lang/Object;
.source "OnceAllKillMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnceAllKillMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAKHistory"
.end annotation


# instance fields
.field private mKilledProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOOM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSwap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private strDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnceAllKillMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnceAllKillMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->this$0:Lcom/android/server/am/OnceAllKillMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnceAllKillMonitorService;Lcom/android/server/am/OnceAllKillMonitorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->getKilledProcess()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getKilledProcess()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mKilledProcess:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->strDate:Ljava/lang/String;

    return-object v0
.end method

.method getOOM()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mOOM:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSwap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mSwap:Ljava/util/ArrayList;

    return-object v0
.end method

.method setHistory(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->strDate:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mSwap:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mOOM:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->mKilledProcess:Ljava/util/ArrayList;

    return-void
.end method

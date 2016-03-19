.class final Lcom/touchtype_fluency/util/h;
.super Lcom/touchtype_fluency/util/i;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/touchtype_fluency/util/h$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/h$1;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/h;->a:Ljava/util/Map;

    new-instance v0, Lcom/touchtype_fluency/util/h$2;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/h$2;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/h;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/touchtype_fluency/util/j;

    sget-object v1, Lcom/touchtype_fluency/util/h;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/j;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/touchtype_fluency/util/i;-><init>(Lcom/touchtype_fluency/util/j;Ljava/util/Map;I)V

    return-void
.end method

.method static a()Lcom/touchtype_fluency/util/h;
    .locals 2

    new-instance v0, Lcom/touchtype_fluency/util/h;

    sget-object v1, Lcom/touchtype_fluency/util/h;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/h;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

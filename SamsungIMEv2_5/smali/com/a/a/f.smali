.class public Lcom/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/f$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static final c:Lcom/a/a/f;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/f$a;",
            "Lcom/a/a/h$c",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/f;->a:Z

    new-instance v0, Lcom/a/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/a/f;-><init>(Z)V

    sput-object v0, Lcom/a/a/f;->c:Lcom/a/a/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/f;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/f;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/a/a/f;
    .locals 1

    sget-object v0, Lcom/a/a/f;->c:Lcom/a/a/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/n;I)Lcom/a/a/h$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/a/a/n;",
            ">(TContainingType;I)",
            "Lcom/a/a/h$c",
            "<TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/f;->b:Ljava/util/Map;

    new-instance v1, Lcom/a/a/f$a;

    invoke-direct {v1, p1, p2}, Lcom/a/a/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h$c;

    return-object v0
.end method

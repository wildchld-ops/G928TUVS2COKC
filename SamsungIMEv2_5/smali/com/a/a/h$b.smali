.class final Lcom/a/a/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g$a",
        "<",
        "Lcom/a/a/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/i$b",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/a/a/x$a;

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h$b;->a:Lcom/a/a/i$b;

    iput p2, p0, Lcom/a/a/h$b;->b:I

    iput-object p3, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    iput-boolean p4, p0, Lcom/a/a/h$b;->d:Z

    iput-boolean p5, p0, Lcom/a/a/h$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZLcom/a/a/h$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/a/a/h$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h$b;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/a/a/h$b;)Lcom/a/a/x$a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/h$b;)I
    .locals 2

    iget v0, p0, Lcom/a/a/h$b;->b:I

    iget v1, p1, Lcom/a/a/h$b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Lcom/a/a/x$a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h$b;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/a/a/h$b;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/a/a/h$b;

    invoke-virtual {p0, p1}, Lcom/a/a/h$b;->a(Lcom/a/a/h$b;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/a/a/x$b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    invoke-virtual {v0}, Lcom/a/a/x$a;->a()Lcom/a/a/x$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/i$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/i$b",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/h$b;->a:Lcom/a/a/i$b;

    return-object v0
.end method

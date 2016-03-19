.class final Lcom/nuance/nmdp/speechkit/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/y$a;->a:Z

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/y$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/y$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/y$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/y$a;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/y$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/y$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/y$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/y$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/y$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/y$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/y$a;->a:Z

    return v0
.end method

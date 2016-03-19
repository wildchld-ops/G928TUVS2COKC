.class public Lcom/nuance/nmdp/speechkit/dy;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dy;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcom/nuance/nmdp/speechkit/dy;->b:B

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nuance/nmdp/speechkit/dy;->b:B

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()B
    .locals 1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/dy;->b:B

    return v0
.end method

.class public final Lcom/nuance/nmdp/speechkit/ar;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nuance/nmdp/speechkit/as;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ar;->a:Ljava/lang/String;

    new-instance v0, Lcom/nuance/nmdp/speechkit/as;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/as;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ar;->b:Lcom/nuance/nmdp/speechkit/as;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/nuance/nmdp/speechkit/as;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ar;->b:Lcom/nuance/nmdp/speechkit/as;

    return-object v0
.end method

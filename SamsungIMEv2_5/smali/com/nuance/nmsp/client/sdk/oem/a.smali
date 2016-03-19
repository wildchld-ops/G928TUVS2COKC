.class public final Lcom/nuance/nmsp/client/sdk/oem/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->b:Z

    if-eqz p1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v3, v4, :cond_0

    const-string v3, "Android_Context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->a:Landroid/content/Context;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v3, "Disable_Bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->b:Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eq;->a(Landroid/content/Context;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eq;->b()Z

    move-result v0

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eq;->c()V

    goto :goto_0
.end method

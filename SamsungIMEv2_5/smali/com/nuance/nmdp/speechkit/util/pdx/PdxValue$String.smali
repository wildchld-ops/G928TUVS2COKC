.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "String"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->a:Ljava/lang/String;

    const-string v1, "\n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

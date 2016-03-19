.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Integer"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->a:I

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->a:I

    return v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

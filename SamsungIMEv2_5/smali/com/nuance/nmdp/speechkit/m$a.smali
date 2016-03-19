.class final Lcom/nuance/nmdp/speechkit/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognition$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/m$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/m$a;->b:I

    return-void
.end method


# virtual methods
.method public final getScore()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/m$a;->b:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/m$a;->a:Ljava/lang/String;

    return-object v0
.end method

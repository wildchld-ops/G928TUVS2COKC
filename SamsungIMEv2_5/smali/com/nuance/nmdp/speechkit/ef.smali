.class public final Lcom/nuance/nmdp/speechkit/ef;
.super Lcom/nuance/nmdp/speechkit/dy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$j;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/dy;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ef;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ef;->a:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/nuance/nmdp/speechkit/ck$b;
.super Lcom/nuance/nmdp/speechkit/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/nuance/nmdp/speechkit/ck$b;

.field public static final b:Lcom/nuance/nmdp/speechkit/ck$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/nmdp/speechkit/ck$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/ck$b;-><init>(I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/ck$b;->a:Lcom/nuance/nmdp/speechkit/ck$b;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ck$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/ck$b;-><init>(I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/ck$b;->b:Lcom/nuance/nmdp/speechkit/ck$b;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/cr;-><init>(I)V

    return-void
.end method

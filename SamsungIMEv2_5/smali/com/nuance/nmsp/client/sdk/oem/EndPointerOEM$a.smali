.class public final Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

.field public static final b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

.field public static final c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    iput p1, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    return-void
.end method

.method public static a(I)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    goto :goto_0
.end method

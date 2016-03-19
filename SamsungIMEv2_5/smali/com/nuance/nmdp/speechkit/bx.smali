.class public final Lcom/nuance/nmdp/speechkit/bx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/nuance/nmdp/speechkit/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/nmdp/speechkit/bx;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.8c"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.0.0B05_SamsungEPD"

    return-object v0
.end method

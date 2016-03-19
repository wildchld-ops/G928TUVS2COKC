.class public final Lcom/nuance/nmdp/speechkit/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$a;
.implements Lcom/nuance/nmdp/speechkit/ck$d;
.implements Lcom/nuance/nmdp/speechkit/ck$e;
.implements Lcom/nuance/nmdp/speechkit/ck$f;
.implements Lcom/nuance/nmdp/speechkit/ck$g;
.implements Lcom/nuance/nmdp/speechkit/ck$j;
.implements Lcom/nuance/nmdp/speechkit/ck$l;
.implements Lcom/nuance/nmdp/speechkit/ck$m;
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/cv;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/cj;

.field private b:Lcom/nuance/nmdp/speechkit/ck;

.field private c:Lcom/nuance/nmdp/speechkit/cu;

.field private d:Lcom/nuance/nmdp/speechkit/cl;

.field private e:Lcom/nuance/nmdp/speechkit/cx;

.field private f:I

.field private g:Lcom/nuance/nmdp/speechkit/co;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/nuance/nmdp/speechkit/ck$h;

.field private l:Ljava/util/Vector;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/cu;Lcom/nuance/nmdp/speechkit/de;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/ch;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/dd;->i:Z

    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/dd;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    invoke-static {p3}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/util/Vector;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dd;->c:Lcom/nuance/nmdp/speechkit/cu;

    move-object v0, p2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dj;->e()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/dj;->a()Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/dd;->l:Ljava/util/Vector;

    const-string v0, "ep.enable"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    const-string v0, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->i:Z

    const-string v0, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->j:Z

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-direct {v0, v1, v2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;-><init>(Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/cj;Ljava/util/Vector;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    sget-object v0, Lcom/nuance/nmdp/speechkit/ch;->c:Lcom/nuance/nmdp/speechkit/ch;

    invoke-virtual {p4, v0}, Lcom/nuance/nmdp/speechkit/ch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->c:Lcom/nuance/nmdp/speechkit/ck$h;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->k:Lcom/nuance/nmdp/speechkit/ck$h;

    :cond_0
    :goto_0
    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/ch;->a:Lcom/nuance/nmdp/speechkit/ch;

    invoke-virtual {p4, v0}, Lcom/nuance/nmdp/speechkit/ch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->a:Lcom/nuance/nmdp/speechkit/ck$h;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->k:Lcom/nuance/nmdp/speechkit/ck$h;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/ch;->b:Lcom/nuance/nmdp/speechkit/ch;

    invoke-virtual {p4, v0}, Lcom/nuance/nmdp/speechkit/ch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->b:Lcom/nuance/nmdp/speechkit/ck$h;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->k:Lcom/nuance/nmdp/speechkit/ck$h;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/ch;->d:Lcom/nuance/nmdp/speechkit/ch;

    invoke-virtual {p4, v0}, Lcom/nuance/nmdp/speechkit/ch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->d:Lcom/nuance/nmdp/speechkit/ck$h;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->k:Lcom/nuance/nmdp/speechkit/ck$h;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/dd;)Lcom/nuance/nmdp/speechkit/co;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    return-object v0
.end method

.method private a(Lcom/nuance/nmdp/speechkit/cx;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/a;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->l:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/a;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    :cond_0
    iput p2, p0, Lcom/nuance/nmdp/speechkit/dd;->f:I

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dd;->e:Lcom/nuance/nmdp/speechkit/cx;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->k:Lcom/nuance/nmdp/speechkit/ck$h;

    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    move v2, v10

    :goto_0
    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p0

    move-object v9, p0

    invoke-interface/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$h;ZLcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$g;Lcom/nuance/nmdp/speechkit/ck$l;Lcom/nuance/nmdp/speechkit/ck$d;Lcom/nuance/nmdp/speechkit/ck$e;Lcom/nuance/nmdp/speechkit/ck$f;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const-string v0, "RECORD_ERROR"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    iput v10, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :goto_2
    const-string v0, "STARTED"

    invoke-direct {p0, v0, v11}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    iput v10, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->h()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->c:Lcom/nuance/nmdp/speechkit/cu;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->c:Lcom/nuance/nmdp/speechkit/cu;

    invoke-interface {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/cu;->a(Lcom/nuance/nmdp/speechkit/cv;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Vector;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "CAPTURE_TIMEOUT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->i()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$m;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$m;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/dd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/dd;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dd;->b(Z)V

    return-void
.end method

.method private h()V
    .locals 4

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->f:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/dd$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/dd$1;-><init>(Lcom/nuance/nmdp/speechkit/dd;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/dd;->f:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->g:Lcom/nuance/nmdp/speechkit/co;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->e:Lcom/nuance/nmdp/speechkit/cx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cx;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/dc; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "END_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$b;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, "STOPPED"

    invoke-direct {p0, v0, v4}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_3
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->i()V

    :cond_4
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->j()V

    const-string v0, "STOPPED"

    invoke-direct {p0, v0, v4}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cx;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audioSink cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    const v6, 0xea60

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Lcom/nuance/nmdp/speechkit/cx;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/cx;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Lcom/nuance/nmdp/speechkit/cx;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/dd;->b(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/cx;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->f:I

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->e:Lcom/nuance/nmdp/speechkit/cx;

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$e;)V

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->h()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x4

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->j()V

    if-eqz p1, :cond_0

    const-string v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v4}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->j()V

    if-eqz p1, :cond_3

    const-string v0, "CAPTURE_TIMEOUT"

    invoke-direct {p0, v0, v4}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->i()V

    :cond_4
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dd;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$f;)V

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->j()V

    iput v3, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0
.end method

.method public final a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p2, [B

    iget v0, p4, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dd;->e:Lcom/nuance/nmdp/speechkit/cx;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p2, v2, v0, v3}, Lcom/nuance/nmdp/speechkit/cx;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/dc; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "BUFFER_RECORDED"

    invoke-direct {p0, v0, p5}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dd;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/cs;->a(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, p3, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->h()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$f;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$e;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dd;->i()V

    :cond_1
    const-string v0, "RECORD_ERROR"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dd;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "START_OF_SPEECH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dd;->d:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

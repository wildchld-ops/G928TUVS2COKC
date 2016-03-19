.class public Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck;
.implements Lcom/nuance/nmdp/speechkit/cl$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$1;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/Object;

.field private static B:Ljava/lang/Object;

.field private static C:Ljava/lang/Object;

.field private static final N:Ljava/lang/Integer;

.field private static final O:Ljava/lang/Integer;

.field private static final P:Ljava/lang/Integer;

.field public static a:Ljava/lang/Object;

.field public static b:Ljava/lang/Object;

.field public static c:I

.field public static d:I


# instance fields
.field private D:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

.field private E:[S

.field private F:[B

.field private G:I

.field private H:I

.field private I:I

.field private J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

.field private K:Z

.field private L:Lcom/nuance/nmdp/speechkit/cl;

.field private M:Z

.field private Q:Landroid/content/Context;

.field private R:Lcom/nuance/nmdp/speechkit/eq;

.field private S:Lcom/nuance/nmdp/speechkit/cj;

.field private T:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

.field private U:Z

.field private V:Lcom/nuance/nmsp/client/sdk/oem/f;

.field private W:I

.field private X:I

.field private Y:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

.field private z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C:Ljava/lang/Object;

    const-string v0, "nmsp_sk_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:Ljava/lang/Object;

    sput v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    sput v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->N:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/cj;Ljava/util/Vector;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->M:Z

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Landroid/content/Context;

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->T:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->U:Z

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->V:Lcom/nuance/nmsp/client/sdk/oem/f;

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->W:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->X:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Y:I

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    invoke-direct {p0, p2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmdp/speechkit/cj;)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->L:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    invoke-virtual {v1, p3}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->a(Ljava/util/Vector;)V

    if-eqz p3, :cond_7

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v3, v4, :cond_0

    const-string v3, "samsung.custom.EnableEpd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->U:Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v3, "USE_ENERGY_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    goto :goto_1

    :cond_2
    const-string v3, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->M:Z

    goto :goto_1

    :cond_3
    const-string v3, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    goto :goto_1

    :cond_4
    const-string v3, "Android_Context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Landroid/content/Context;

    goto :goto_1

    :cond_5
    const-string v3, "samsung.custom.SampleRate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->W:I

    goto :goto_1

    :cond_6
    const-string v3, "samsung.ep.StartSilenceTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e80

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->X:I

    goto/16 :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->U:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/f;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/f;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->V:Lcom/nuance/nmsp/client/sdk/oem/f;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->V:Lcom/nuance/nmsp/client/sdk/oem/f;

    invoke-virtual {v0, p3}, Lcom/nuance/nmsp/client/sdk/oem/f;->a(Ljava/util/Vector;)Z

    :cond_8
    return-void
.end method

.method static synthetic A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->V:Lcom/nuance/nmsp/client/sdk/oem/f;

    return-object v0
.end method

.method static synthetic B(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    return-object v0
.end method

.method static synthetic C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->T:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    return-object v0
.end method

.method static synthetic D(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Y:I

    return v0
.end method

.method static synthetic E(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->X:I

    return v0
.end method

.method static synthetic F(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    return v0
.end method

.method static synthetic G(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->M:Z

    return v0
.end method

.method static synthetic H(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t:I

    return v0
.end method

.method static synthetic I(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->V:Lcom/nuance/nmsp/client/sdk/oem/f;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;I)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Y:I

    return v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->T:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 6

    const/4 v5, -0x2

    const/16 v4, 0x3e80

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, -0x1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->d:Lcom/nuance/nmdp/speechkit/cj;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->e:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/16 v0, 0x2af8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    :goto_0
    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j:I

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    invoke-static {v1, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    if-eq v1, v5, :cond_6

    if-eq v1, v2, :cond_6

    if-le v1, v0, :cond_6

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    :goto_1
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    invoke-static {v1, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-eq v1, v5, :cond_7

    if-eq v1, v2, :cond_7

    if-le v1, v0, :cond_7

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:I

    :goto_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x:I

    return-void

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->f:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->g:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->c:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    goto/16 :goto_0

    :cond_6
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    goto/16 :goto_1

    :cond_7
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:[B

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:[S

    return-object p1
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    return-void
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j:I

    return v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n:I

    return v0
.end method

.method static synthetic d()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->N:Ljava/lang/Integer;

    return-object v0
.end method

.method public static native decodeCleanupSpeex()V
.end method

.method public static native decodeInitSpeex(III)I
.end method

.method public static native decodeSpeex([BI[SI)I
.end method

.method static synthetic e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e:I

    return v0
.end method

.method static synthetic e()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Ljava/lang/Integer;

    return-object v0
.end method

.method public static native encodeCleanupSpeex()V
.end method

.method public static native encodeInitSpeex(IIIII)I
.end method

.method public static native encodeSpeex([S[BI)I
.end method

.method static synthetic f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    return v0
.end method

.method static synthetic f()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k:I

    return v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->c:Lcom/nuance/nmdp/speechkit/cj;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmdp/speechkit/cj;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->e:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->f:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->h:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->g:Lcom/nuance/nmdp/speechkit/cj;

    if-ne v0, v1, :cond_1

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->d:Lcom/nuance/nmdp/speechkit/cj;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->S:Lcom/nuance/nmdp/speechkit/cj;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmdp/speechkit/cj;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:I

    return v0
.end method

.method static synthetic k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:I

    return v0
.end method

.method static synthetic l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:[S

    return-object v0
.end method

.method static synthetic m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:[B

    return-object v0
.end method

.method static synthetic n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    return v0
.end method

.method static synthetic o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    return v0
.end method

.method static synthetic p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->L:Lcom/nuance/nmdp/speechkit/cl;

    return-object v0
.end method

.method static synthetic q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q:I

    return v0
.end method

.method static synthetic r(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:I

    return v0
.end method

.method static synthetic s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    return v0
.end method

.method public static native speexCodeToString(I)Ljava/lang/String;
.end method

.method static synthetic t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    return v0
.end method

.method static synthetic u(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:I

    return v0
.end method

.method static synthetic v(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    return v0
.end method

.method static synthetic w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    return v0
.end method

.method static synthetic x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:I

    return v0
.end method

.method static synthetic y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x:I

    return v0
.end method

.method static synthetic z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->U:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ck$e;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmdp/speechkit/ck$e;)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$f;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmdp/speechkit/ck$f;)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$m;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$b;->a:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ck$m;->a(Lcom/nuance/nmdp/speechkit/ck$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$d;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$h;ZLcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$g;Lcom/nuance/nmdp/speechkit/ck$l;Lcom/nuance/nmdp/speechkit/ck$d;Lcom/nuance/nmdp/speechkit/ck$e;Lcom/nuance/nmdp/speechkit/ck$f;)Z
    .locals 9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Landroid/content/Context;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->W:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h()V

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->a:Lcom/nuance/nmdp/speechkit/ck$h;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    :cond_4
    :goto_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(ZLcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$g;Lcom/nuance/nmdp/speechkit/ck$l;Lcom/nuance/nmdp/speechkit/ck$d;Lcom/nuance/nmdp/speechkit/ck$e;Lcom/nuance/nmdp/speechkit/ck$f;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$h;->c:Lcom/nuance/nmdp/speechkit/ck$h;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$k;Lcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/eq;->a(Landroid/content/Context;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eq;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h()V

    :cond_2
    sget-object v1, Lcom/nuance/nmdp/speechkit/ck$k;->a:Lcom/nuance/nmdp/speechkit/ck$k;

    if-ne p1, v1, :cond_4

    const/4 v1, 0x3

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e:I

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    :cond_3
    :goto_1
    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-direct {v1, p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-virtual {v1, p2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a(Lcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$c;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/nuance/nmdp/speechkit/ck$k;->c:Lcom/nuance/nmdp/speechkit/ck$k;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eq;->f()I

    move-result v1

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->R:Lcom/nuance/nmdp/speechkit/eq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eq;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    goto :goto_0
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/ck$m;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a(Lcom/nuance/nmdp/speechkit/ck$m;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    return-void
.end method

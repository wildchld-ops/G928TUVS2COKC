.class public Lcom/nuance/nmdp/speechkit/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/dg;
.implements Lcom/nuance/nmdp/speechkit/dl;


# static fields
.field private static n:J


# instance fields
.field protected a:Lcom/nuance/nmdp/speechkit/dk;

.field public b:Ljava/util/Vector;

.field protected c:Lcom/nuance/nmdp/speechkit/de;

.field protected d:I

.field protected e:Ljava/lang/Object;

.field protected f:B

.field private g:Lcom/nuance/nmdp/speechkit/di;

.field private h:Lcom/nuance/nmdp/speechkit/dl;

.field private i:Lcom/nuance/nmdp/speechkit/cj;

.field private j:Lcom/nuance/nmdp/speechkit/cj;

.field private k:B

.field private l:Lcom/nuance/nmdp/speechkit/cl;

.field private m:Ljava/util/Hashtable;

.field private o:J

.field private p:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/nuance/nmdp/speechkit/dm;->n:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/dj;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dm;->c:Lcom/nuance/nmdp/speechkit/de;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->g()Lcom/nuance/nmdp/speechkit/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->e()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->i:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->f()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->j:Lcom/nuance/nmdp/speechkit/cj;

    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/nuance/nmdp/speechkit/dm;->k:B

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->a()Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->l:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/dk;->f()B

    move-result v1

    iput-byte v1, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->p:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/dk;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmdp/speechkit/dm;->o:J

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->b:Ljava/util/Vector;

    if-eqz p3, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->e()Lcom/nuance/nmdp/speechkit/cz;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dm;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cz$a;
    .locals 1

    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nmsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->b:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_1
    const-string v0, "app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->c:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_2
    const-string v0, "nss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->d:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_3
    const-string v0, "slog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->e:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_4
    const-string v0, "nsslog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->f:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_5
    const-string v0, "gwlog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->g:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_6
    const-string v0, "svsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->h:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_7
    const-string v0, "sip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->i:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_8
    const-string v0, "sdp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/nuance/nmdp/speechkit/cz$a;->j:Lcom/nuance/nmdp/speechkit/cz$a;

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;J)V
    .locals 10

    const/4 v3, 0x2

    const/4 v9, 0x0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    :cond_0
    new-array v4, v9, [B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->p:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<gp><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v9

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->c:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->b:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->d:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->h:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v3, v5, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " p=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</gp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v1, 0xa17

    const-string v2, "SEND_BCP_GET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-byte v5, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/dm;->h:Lcom/nuance/nmdp/speechkit/dl;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    return-void
.end method

.method public static f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dh;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dm;->l:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v3, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/dm;->l:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v2, v3, p0, v0}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/dh;

    const-string v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/dh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public a(BS)V
    .locals 3

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0, p0}, Lcom/nuance/nmdp/speechkit/dk;->b(Lcom/nuance/nmdp/speechkit/dl;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(B[B)V
    .locals 0

    return-void
.end method

.method public final a(JS)V
    .locals 3

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JS[B)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p4, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p4}, Ljava/lang/String;-><init>([B)V

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    const-string v4, ";"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_1

    new-instance v6, Lcom/nuance/nmdp/speechkit/cz;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dm;->a(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_3

    new-instance v4, Lcom/nuance/nmdp/speechkit/cz;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dm;->a(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_4

    const/16 v0, 0xc9

    if-ne p3, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final a(Lcom/nuance/nmdp/speechkit/dl;)V
    .locals 10

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/a;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->b:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/a;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->i:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->i:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->j:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->j:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->i:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/dj;->a(Lcom/nuance/nmdp/speechkit/cj;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->j:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/dj;->b(Lcom/nuance/nmdp/speechkit/cj;)V

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dm;->h:Lcom/nuance/nmdp/speechkit/dl;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/dk;->a(Lcom/nuance/nmdp/speechkit/dl;)V

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dk;->d()[B

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dm;->e()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<lr><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/nuance/nmdp/speechkit/dm;->k:B

    packed-switch v1, :pswitch_data_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</lr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v1, 0xa27

    const-string v2, "SEND_BCP_LOAD_RESOURCE"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    const/4 v9, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    :cond_1
    :pswitch_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->i:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dm;->j:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/dk;->a(Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nr9><reco/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nr9><tts/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<oper></oper>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x4

    new-array v8, v0, [B

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<sp><rid>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</rid>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v4, v3

    move-object v3, v2

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmdp/speechkit/cz$a;->c:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v5, v11, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmdp/speechkit/cz$a;->b:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v5, v11, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmdp/speechkit/cz$a;->d:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v5, v11, :cond_2

    :cond_1
    const/4 v9, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "<"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " p=\""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" v=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmdp/speechkit/cz$a;->h:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v5, v11, :cond_3

    const/4 v9, 0x0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/cz$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " p=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" v=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    array-length v4, v0

    const/4 v11, 0x0

    invoke-static {v4, v8, v11}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/4 v4, 0x0

    const/4 v11, 0x4

    invoke-virtual {v10, v8, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v4, 0x0

    array-length v11, v0

    invoke-virtual {v10, v0, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v5

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</sp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v1, 0xa15

    const-string v2, "SEND_BCP_SET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-byte v5, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/dm;->h:Lcom/nuance/nmdp/speechkit/dl;

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    :try_start_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/dm;->a(Ljava/util/Vector;J)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    iget-byte v2, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dm;->h:Lcom/nuance/nmdp/speechkit/dl;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nuance/nmdp/speechkit/dk;->a(BILcom/nuance/nmdp/speechkit/dl;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dm;->e()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<fr><rid>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<n>1</n>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<resids>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<res1><id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/nmdp/speechkit/dm;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<timeout>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<timeout></res1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</resids>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</fr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->a:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v1, 0xa30

    const-string v2, "SEND_BCP_FREE_RESOURCE_ID"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/nmdp/speechkit/dm;->f:B

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/dm;->h:Lcom/nuance/nmdp/speechkit/dl;

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(S)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a([B)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dm;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/nuance/nmdp/speechkit/dm;->d:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    return-void
.end method

.method public final b(JS[B)V
    .locals 11

    const/4 v1, 0x0

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->m:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->p:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->p:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p4}, Ljava/lang/String;-><init>([B)V

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_1
    const-string v3, ";"

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/cz;

    new-instance v6, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v1

    invoke-direct {v6, v7, v5, v1}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/cz;

    new-instance v4, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v1

    invoke-direct {v4, v5, v3, v1}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_4
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_5

    const/16 v0, 0xc9

    if-ne p3, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->g:Lcom/nuance/nmdp/speechkit/di;

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/nuance/nmdp/speechkit/de;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dm;->c:Lcom/nuance/nmdp/speechkit/de;

    return-object v0
.end method

.method protected declared-synchronized e()J
    .locals 6

    const-wide/16 v2, 0x1

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/nuance/nmdp/speechkit/dm;->n:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/nuance/nmdp/speechkit/dm;->n:J

    sget-wide v2, Lcom/nuance/nmdp/speechkit/dm;->n:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/nuance/nmdp/speechkit/dm;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

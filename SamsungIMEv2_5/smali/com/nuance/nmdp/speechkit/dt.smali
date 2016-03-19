.class public Lcom/nuance/nmdp/speechkit/dt;
.super Lcom/nuance/nmdp/speechkit/dr;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ej;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/16 v1, 0xe0

    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    array-length v0, p1

    if-lez v0, :cond_0

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/dt;->a([BI)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p1

    sub-int v0, v2, v0

    array-length v2, v1

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/dt;->b([B)V

    goto :goto_0
.end method

.method public constructor <init>([BB)V
    .locals 1

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/dt;->b([B)V

    return-void
.end method

.method private b([B)V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x16

    if-eq v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/dt;->a([BI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dt;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v0, [B

    array-length v4, v3

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v4, v0, 0xff

    invoke-static {p1, v3}, Lcom/nuance/nmdp/speechkit/dt;->a([BI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dt;->a(I)I

    move-result v5

    add-int/2addr v3, v5

    new-array v5, v0, [B

    array-length v6, v5

    invoke-static {p1, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/dq;

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/dq;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/dv;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/eh;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/do;

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/do;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/dx;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/dx;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v4, v5, v1}, Lcom/nuance/nmdp/speechkit/dt;-><init>([BB)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmdp/speechkit/ed;

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/ed;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final a()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/dv;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid dictionary. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/eo;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid sequence. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/eh;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    sparse-switch p3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/eh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/do;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/do;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0xc1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/dq;-><init>([B)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/String;[BS)V
    .locals 3

    sparse-switch p3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/dv;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/dq;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/dq;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/eh;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/do;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/do;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/dx;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/dx;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/dt;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/nuance/nmdp/speechkit/dt;-><init>([BB)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ed;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/ed;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PDXDictionary.containsKey key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/dr;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 7

    const-string v1, ""

    const-string v3, ""

    const-string v0, ""

    const/4 v2, 0x0

    move-object v4, v3

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    goto :goto_0

    :cond_0
    if-lez p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move-object v0, v3

    :goto_3
    move-object v3, v0

    goto :goto_2

    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": <INT> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/dv;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/dv;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": <BYTES> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/dq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/dq;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": <UTF8> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/eh;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": <ASCII> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/do;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/do;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": <NULL> \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/dt;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/nuance/nmdp/speechkit/dt;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :sswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmdp/speechkit/ed;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/nuance/nmdp/speechkit/ed;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    move-object v3, v1

    goto/16 :goto_2

    :cond_4
    move-object v2, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/dv;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/nuance/nmdp/speechkit/do;

    invoke-direct {v3, v0}, Lcom/nuance/nmdp/speechkit/do;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/do;->b()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dq;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dv;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eh;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_3
    check-cast v0, Lcom/nuance/nmdp/speechkit/do;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/do;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_4
    check-cast v0, Lcom/nuance/nmdp/speechkit/dx;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dx;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_5
    check-cast v0, Lcom/nuance/nmdp/speechkit/dt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dt;->d()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_6
    check-cast v0, Lcom/nuance/nmdp/speechkit/ed;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ed;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method

.method public final c(Ljava/lang/String;)S
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dv;->a()I

    move-result v0

    return v0
.end method

.method public d()[B
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dt;->b()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)[B
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dq;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xc1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eh;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/do;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/do;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/ej;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/dt;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/eo;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lcom/nuance/nmdp/speechkit/ed;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/dt;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

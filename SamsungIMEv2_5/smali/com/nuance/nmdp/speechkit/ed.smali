.class public final Lcom/nuance/nmdp/speechkit/ed;
.super Lcom/nuance/nmdp/speechkit/dr;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/eo;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v3, v0, 0xff

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/ed;->a([BI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ed;->a(I)I

    move-result v4

    add-int/2addr v2, v4

    new-array v4, v0, [B

    array-length v5, v4

    invoke-static {p1, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/dq;

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/dq;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/dv;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/eh;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/do;

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/do;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/dx;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/dx;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v3, v4, v1}, Lcom/nuance/nmdp/speechkit/dt;-><init>([BB)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmdp/speechkit/ed;

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/ed;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

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
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid dictionary. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/eo;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid sequence. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-direct {v0, p1}, Lcom/nuance/nmdp/speechkit/eh;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)S
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v0

    return v0
.end method

.method public final b([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-direct {v0, p1}, Lcom/nuance/nmdp/speechkit/dq;-><init>([B)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    :try_start_0
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

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;->a([B)[B

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

.method public final c(I)I
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dv;->a()I

    move-result v0

    return v0
.end method

.method public final d(I)[B
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dq;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xc1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eh;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/do;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/do;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lcom/nuance/nmdp/speechkit/ej;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/dt;

    return-object v0
.end method

.method public final h(I)Lcom/nuance/nmdp/speechkit/eo;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmdp/speechkit/ed;

    return-object v0
.end method

.method public final i(I)V
    .locals 2

    new-instance v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-direct {v0, p1}, Lcom/nuance/nmdp/speechkit/dv;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected final j(I)Ljava/lang/String;
    .locals 6

    const-string v4, ""

    const-string v2, ""

    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v2

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    if-lez p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ed;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[ \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dr;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<INT> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dv;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<BYTES> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dq;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<UTF8> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/eh;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<ASCII> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/do;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/do;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<NULL> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/dt;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/nuance/nmdp/speechkit/dt;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmdp/speechkit/ed;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/nuance/nmdp/speechkit/ed;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v1, v0

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

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/ed;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

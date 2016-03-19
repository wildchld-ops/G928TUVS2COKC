.class public Lcom/nuance/nmdp/speechkit/cs;
.super Ljava/lang/Object;


# instance fields
.field private a:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/nuance/nmdp/speechkit/cs;->a:S

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-string v2, "amp;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v3, 0x27

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nuance/nmdp/speechkit/cj;)Z
    .locals 2

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cs;->a:S

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->d:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->e:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->f:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->g:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/nuance/nmdp/speechkit/cj;)Z
    .locals 2

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cs;->a:S

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->c:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    iget-short v1, v1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->c:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p0, v0, :cond_2

    :cond_0
    sget-object p0, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->e:Lcom/nuance/nmdp/speechkit/cj;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->f:Lcom/nuance/nmdp/speechkit/cj;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->h:Lcom/nuance/nmdp/speechkit/cj;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->g:Lcom/nuance/nmdp/speechkit/cj;

    if-ne p0, v0, :cond_1

    :cond_3
    sget-object p0, Lcom/nuance/nmdp/speechkit/cj;->d:Lcom/nuance/nmdp/speechkit/cj;

    goto :goto_0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cs;->a:S

    return v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cs;)Z
    .locals 2

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cs;->a:S

    iget-short v1, p1, Lcom/nuance/nmdp/speechkit/cs;->a:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

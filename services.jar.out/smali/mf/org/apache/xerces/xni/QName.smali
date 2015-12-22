.class public Lmf/org/apache/xerces/xni/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public localpart:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public rawname:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/xni/QName;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lmf/org/apache/xerces/xni/QName;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x2c

    const/16 v4, 0x22

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "prefix=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v2, "localpart=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const-string/jumbo v2, "rawname=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string/jumbo v2, "uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

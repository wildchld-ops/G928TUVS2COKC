.class public Lmf/org/apache/xml/resolver/CatalogEntry;
.super Ljava/lang/Object;
.source "CatalogEntry.java"


# static fields
.field protected static entryArgs:Ljava/util/Vector;

.field protected static entryTypes:Ljava/util/Hashtable;

.field protected static nextEntry:I


# instance fields
.field protected args:Ljava/util/Vector;

.field protected entryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    :try_start_0
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2

    :cond_0
    iput p1, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    iput-object p2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const/4 v6, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    sget-object v4, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v4, v6}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_start_0
    sget-object v4, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v4, v6}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4

    :cond_1
    iput v3, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    iput-object p2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void
.end method

.method public static addEntryType(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    sget v2, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    sget v1, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    sget v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    sget v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getEntryArgCount(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    :try_start_0
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2
.end method

.method public static getEntryArgCount(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    invoke-static {p0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v0

    return v0
.end method

.method public static getEntryType(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const/4 v2, 0x3

    sget-object v1, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v1

    :cond_0
    sget-object v1, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getEntryArg(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryType()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    return v0
.end method

.method public setEntryArg(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

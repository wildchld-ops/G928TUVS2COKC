.class public Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;
.super Ljava/lang/Object;
.source "SecondaryKeyMapFactory.java"


# instance fields
.field private mSecondaryKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getSecondaryKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getSecondaryKeyMapSet()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMap()[Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    if-ne v3, v6, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v3

    :cond_0
    :goto_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_1

    :cond_2
    const-string v4, "short"

    const-string v5, "ro.build.scafe.size"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v3, -0x1

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForTablet()[Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v2

    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_5

    if-ne v3, v6, :cond_4

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v3

    :cond_3
    :goto_3
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-object v4
.end method

.class public Lcom/ime/framework/common/SymbolCountManagerImpl;
.super Ljava/lang/Object;
.source "SymbolCountManagerImpl.java"

# interfaces
.implements Lcom/ime/framework/common/SymbolCountManager;


# static fields
.field public static final DEFAULT_SYMBOL_LIST:[Ljava/lang/String;

.field private static sInstance:Lcom/ime/framework/common/SymbolCountManagerImpl;


# instance fields
.field private DEFAULT_STATE_SET_SIZE:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mSymbolCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/common/SymbolCountManagerImpl;->sInstance:Lcom/ime/framework/common/SymbolCountManagerImpl;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "33"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "63"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "39"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "64"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "45"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "58"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "59"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "215"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "247"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "126"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/framework/common/SymbolCountManagerImpl;->DEFAULT_SYMBOL_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    const/16 v0, 0xa

    iput v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->DEFAULT_STATE_SET_SIZE:I

    iput-object v1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->DEFAULT_STATE_SET_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/ime/framework/common/SymbolCountManagerImpl;->loadSymbols()V

    return-void
.end method

.method public static getInstance()Lcom/ime/framework/common/SymbolCountManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/common/SymbolCountManagerImpl;->sInstance:Lcom/ime/framework/common/SymbolCountManagerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/common/SymbolCountManagerImpl;

    invoke-direct {v0}, Lcom/ime/framework/common/SymbolCountManagerImpl;-><init>()V

    sput-object v0, Lcom/ime/framework/common/SymbolCountManagerImpl;->sInstance:Lcom/ime/framework/common/SymbolCountManagerImpl;

    :cond_0
    sget-object v0, Lcom/ime/framework/common/SymbolCountManagerImpl;->sInstance:Lcom/ime/framework/common/SymbolCountManagerImpl;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearSavedData()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "frequent_symbol_list"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public dumpMap()V
    .locals 6

    iget-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSymbolCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->DEFAULT_STATE_SET_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSymbolCountList(I)Ljava/lang/String;
    .locals 13

    if-gtz p1, :cond_1

    const-string v8, ""

    :cond_0
    return-object v8

    :cond_1
    new-instance v8, Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v11, Lcom/ime/framework/common/SymbolCountManagerImpl$1;

    invoke-direct {v11, p0}, Lcom/ime/framework/common/SymbolCountManagerImpl$1;-><init>(Lcom/ime/framework/common/SymbolCountManagerImpl;)V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v11, v3, :cond_5

    sub-int v7, p1, v3

    const/4 v6, 0x0

    sget-object v1, Lcom/ime/framework/common/SymbolCountManagerImpl;->DEFAULT_SYMBOL_LIST:[Ljava/lang/String;

    array-length v0, v1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    :goto_2
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, " "

    invoke-direct {v9, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-le v6, v0, :cond_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v1, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadSymbols()V
    .locals 10

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "frequent_symbol_list"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    const-string v7, "\\&"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveSymbols()V
    .locals 8

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "frequent_symbol_list"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public setSymbolCount(II)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.class public Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;
.super Ljava/lang/Object;
.source "ShortCutKeyManager.java"


# static fields
.field private static sInstance:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;


# instance fields
.field private mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedShortCutKeyCode:I

.field public mCurrentShortCutCodeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentShortCutKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutCodeArray:Ljava/util/ArrayList;

    const/16 v0, -0xff

    iput v0, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCachedShortCutKeyCode:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;
    .locals 2

    const-class v1, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->sInstance:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    invoke-direct {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;-><init>()V

    sput-object v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->sInstance:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->sInstance:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getShortCutKey(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, -0xff

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getShortCutKeyCode()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCachedShortCutKeyCode:I

    iget v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCachedShortCutKeyCode:I

    goto :goto_0
.end method

.method public getShortCutKeyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutCodeArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final initialize()V
    .locals 2

    new-instance v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;

    invoke-direct {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;-><init>()V

    invoke-virtual {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getShortCutKeyMapSet()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getAlternativeShortCutKeyMapSet()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method public isNonLatinLanguageWithBlankKey(I)Z
    .locals 1

    const/high16 v0, 0x74680000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x6b6d0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x6c6f0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x72750000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x62670000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x756b0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x6b6b0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x6d6b0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x61720000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x66610000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x75720000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x656c0000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x69770000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x68650000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x6b610000

    if-eq p1, v0, :cond_0

    const v0, 0x7a685457

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x68790000

    if-eq p1, v0, :cond_0

    const v0, 0x7a314d4d

    if-eq p1, v0, :cond_0

    const v0, 0x6d794d4d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortCutActiveKey(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;->isActiveKey()Z

    move-result v1

    goto :goto_0
.end method

.method public setInputLanguage(Lcom/ime/framework/common/Language;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    if-eq v5, v7, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v5

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v5

    const v6, 0x7a68434e

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    const/high16 v6, 0x656e0000

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    :goto_0
    const/16 v5, -0xff

    iput v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCachedShortCutKeyCode:I

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutCodeArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    invoke-virtual {v5}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getKeyCode()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutCodeArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v5

    const/high16 v6, 0x62670000

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v4

    const-string v5, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    if-ne v0, v7, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->mCurrentShortCutKeyMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_5
    return-void
.end method

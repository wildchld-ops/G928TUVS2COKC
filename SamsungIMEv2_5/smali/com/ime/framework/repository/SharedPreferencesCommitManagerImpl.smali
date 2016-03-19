.class public final Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesCommitManagerImpl.java"

# interfaces
.implements Lcom/ime/framework/repository/SharedPreferencesCommitManager;


# static fields
.field private static sInstance:Lcom/ime/framework/repository/SharedPreferencesCommitManager;


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mIntegerStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroid/content/SharedPreferences;

.field protected mStringStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mPreference:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    .locals 2

    const-class v1, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->sInstance:Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;

    invoke-direct {v0}, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->sInstance:Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->sInstance:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
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
.method public commitAll()V
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getData(Ljava/lang/String;I)I
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move v1, p2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    move p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p2

    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    move-object p2, v0

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

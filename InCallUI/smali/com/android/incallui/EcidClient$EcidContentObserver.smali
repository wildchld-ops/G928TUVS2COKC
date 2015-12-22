.class Lcom/android/incallui/EcidClient$EcidContentObserver;
.super Landroid/database/ContentObserver;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcidContentObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private reQuery(Lcom/android/incallui/EcidClient;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/android/incallui/EcidClient;->access$000(Lcom/android/incallui/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/android/incallui/EcidClient;->access$000(Lcom/android/incallui/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_0

    # ++operator for: Lcom/android/incallui/EcidClient;->m_lookupId:I
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$504()I

    move-result v1

    iget-object v2, p1, Lcom/android/incallui/EcidClient;->m_phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/EcidClient;->m_cname:Ljava/lang/String;

    iget v4, p1, Lcom/android/incallui/EcidClient;->m_nFlags:I

    move-object v0, p1

    # invokes: Lcom/android/incallui/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/EcidClient;->access$600(Lcom/android/incallui/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/EcidClient$EcidContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    const-string v6, "Phone-ECID"

    const-string v7, "callback recieved"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v6, "content://com.cequint.ecid/incalllookup"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    # getter for: Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EcidClient;

    invoke-direct {p0, v1}, Lcom/android/incallui/EcidClient$EcidContentObserver;->reQuery(Lcom/android/incallui/EcidClient;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    # getter for: Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EcidClient;

    iget-object v6, v0, Lcom/android/incallui/EcidClient;->m_phoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/incallui/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/incallui/EcidClient;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/incallui/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/EcidClient;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    :goto_1
    monitor-exit v7

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/EcidClient$EcidContentObserver;->reQuery(Lcom/android/incallui/EcidClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

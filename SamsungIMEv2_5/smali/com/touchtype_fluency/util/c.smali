.class final Lcom/touchtype_fluency/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/touchtype_fluency/util/LanguagePack;


# instance fields
.field private final a:Lcom/touchtype_fluency/util/Storage;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/json/JSONObject;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Lcom/touchtype_fluency/util/d$a;

.field private s:Lcom/touchtype_fluency/util/f;

.field private t:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/util/g;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/touchtype_fluency/util/c$1;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/c$1;-><init>(Lcom/touchtype_fluency/util/c;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    iput-object p2, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    :try_start_0
    const-string v1, "language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    const-string v1, "country"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    const-string v1, "default-layout"

    const-string v2, "qwerty"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    new-instance v1, Ljava/net/URL;

    const-string v2, "archive"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    const-string v1, "sha1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    const-string v1, "preinstalledSha1"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    const-string v1, "beta"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->m:Z

    const-string v1, "latestVersion"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/touchtype_fluency/util/c;->p:I

    iget v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/touchtype_fluency/util/c;->p:I

    iput v1, p0, Lcom/touchtype_fluency/util/c;->q:I

    :cond_0
    const-string v1, "updateAvailable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->n:Z

    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->l:Z

    const-string v1, "input-type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/c;->o:Z

    const-string v1, "files"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "live"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/touchtype_fluency/util/f;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/touchtype_fluency/util/c;->l:Z

    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/f;-><init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/touchtype_fluency/util/g;

    invoke-direct {v1, v0}, Lcom/touchtype_fluency/util/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "he"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "id"

    goto :goto_0

    :cond_2
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "yi"

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/c;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    if-nez v1, :cond_0

    const-string v0, "LanguagePack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") complete - duplicate notification (ignored)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const-string v1, "LanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z

    iget v0, p0, Lcom/touchtype_fluency/util/c;->q:I

    iput v0, p0, Lcom/touchtype_fluency/util/c;->p:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/Downloader;->setComplete()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/d$a;->onComplete(ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/Storage;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/c;)Lcom/touchtype_fluency/util/d$a;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    return-object v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/c;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "language"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "default-layout"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "archive"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "preinstalledSha1"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "beta"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "version"

    iget v2, p0, Lcom/touchtype_fluency/util/c;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "latestVersion"

    iget v2, p0, Lcom/touchtype_fluency/util/c;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "updateAvailable"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->n:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "metadata"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "input-type"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v1, :cond_2

    const-string v1, "files"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v1, :cond_3

    const-string v1, "live"

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/f;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/touchtype_fluency/util/c;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget v3, p1, Lcom/touchtype_fluency/util/c;->q:I

    iget-object v4, p1, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p1, Lcom/touchtype_fluency/util/c;->q:I

    iget v5, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    move v2, v0

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isBeta()Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    iput v3, p0, Lcom/touchtype_fluency/util/c;->q:I

    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v4, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-nez v0, :cond_e

    new-instance v0, Lcom/touchtype_fluency/util/f;

    iget-object v1, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/f;->b()Ljava/net/URL;

    move-result-object v1

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/f;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/touchtype_fluency/util/c;->l:Z

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getCurrentInputType()Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/util/f;-><init>(Ljava/net/URL;Ljava/lang/String;ZLcom/touchtype_fluency/util/Storage;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    :try_start_1
    iget v5, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-le v2, v5, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/touchtype_fluency/util/c;->p:I

    iget v2, p0, Lcom/touchtype_fluency/util/c;->q:I

    if-nez v2, :cond_a

    iput v3, p0, Lcom/touchtype_fluency/util/c;->q:I

    :cond_a
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v0

    :goto_4
    if-eqz v2, :cond_c

    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    const-string v0, ""

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    :try_start_2
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_5
    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v4, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    goto :goto_2

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    iget-object v1, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/f;->a(Lcom/touchtype_fluency/util/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method final a(Lcom/touchtype_fluency/util/d$a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/f;->a(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/c;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid input type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "storage not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/f;->d()V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->delete(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cancelDownload()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V

    return-void
.end method

.method final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getPreinstallFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-static {v0}, Lcom/touchtype_fluency/util/HttpDownload;->createDigest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/touchtype_fluency/util/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/touchtype_fluency/util/c;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->m:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/c;->m:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-nez v2, :cond_5

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v2, :cond_8

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-direct {p1}, Lcom/touchtype_fluency/util/c;->g()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/c;->l:Z

    iget-boolean v3, p1, Lcom/touchtype_fluency/util/c;->l:Z

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v3

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    iget-object v3, p1, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method final f()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentInputType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getCurrentVersion()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/c;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getJavaLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "iw"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "in"

    goto :goto_0

    :cond_2
    const-string v1, "yi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ji"

    goto :goto_0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    return-object v0
.end method

.method public final getMetadata()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreinstallFile()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportedInputTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/util/c$2;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/c$2;-><init>(Lcom/touchtype_fluency/util/c;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x2bf

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x25

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :cond_3
    mul-int/lit8 v3, v3, 0x25

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->s:Lcom/touchtype_fluency/util/f;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4
.end method

.method public final isBeta()Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->m:Z

    return v0
.end method

.method public final declared-synchronized isBroken()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->isDownloaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isDownloadInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->t:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/util/Storage;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/c;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/Storage;->fileExists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->l:Z

    return v0
.end method

.method public final isPreinstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRightToLeft()Z
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isUpdateAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/c;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c;->r:Lcom/touchtype_fluency/util/d$a;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMetadata(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/c;->k:Lorg/json/JSONObject;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->g:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

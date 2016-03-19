.class Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$hotWordEditor;
.super Ljava/lang/Object;
.source "Xt994Wrapper.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "hotWordEditor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordAddMdbPhrase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteHotwordFromEngin(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordDeletePhrase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public exportHotwords(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordExport(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public importHotwords(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordImport(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public init()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetHotwordsInEngin()I
    .locals 1

    const/4 v0, -0x1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordReset()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/server/telecom/CallIdMapper;
.super Ljava/lang/Object;
.source "CallIdMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallIdMapper$BiMap;
    }
.end annotation


# static fields
.field private static sIdCount:I


# instance fields
.field private final mCallIdPrefix:Ljava/lang/String;

.field private final mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/CallIdMapper$BiMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-direct {v0}, Lcom/android/server/telecom/CallIdMapper$BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    invoke-virtual {p0}, Lcom/android/server/telecom/CallIdMapper;->getNewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    return-void
.end method

.method addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/telecom/CallIdMapper$BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallIdMapper$BiMap;->clear()V

    return-void
.end method

.method public getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper$BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper$BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getNewId()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidCallId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValidConferenceId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper$BiMap;->removeValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method removeCall(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/android/server/telecom/CallIdMapper$BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper$BiMap;->remove(Ljava/lang/Object;)Z

    return-void
.end method

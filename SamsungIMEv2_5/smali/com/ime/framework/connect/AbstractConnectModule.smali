.class public abstract Lcom/ime/framework/connect/AbstractConnectModule;
.super Ljava/lang/Object;
.source "AbstractConnectModule.java"

# interfaces
.implements Lcom/ime/framework/connect/ConnectModule;


# instance fields
.field protected mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public resetPersonalizedData()S
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/connect/AbstractConnectModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->resetDLMData()S

    move-result v0

    return v0
.end method

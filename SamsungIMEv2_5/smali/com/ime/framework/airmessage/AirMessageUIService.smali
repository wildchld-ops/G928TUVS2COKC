.class public Lcom/ime/framework/airmessage/AirMessageUIService;
.super Landroid/app/Service;
.source "AirMessageUIService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_UPDATE_FLOATING_WINDOW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AirMessageUIService"


# instance fields
.field private final mBinder:Lcom/ime/framework/airmessage/IAirMessageUIService$Stub;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ime/framework/airmessage/AirMessageUIService$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/airmessage/AirMessageUIService$1;-><init>(Lcom/ime/framework/airmessage/AirMessageUIService;)V

    iput-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ime/framework/airmessage/AirMessageUIService$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/airmessage/AirMessageUIService$2;-><init>(Lcom/ime/framework/airmessage/AirMessageUIService;)V

    iput-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mBinder:Lcom/ime/framework/airmessage/IAirMessageUIService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/airmessage/AirMessageUIService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mBinder:Lcom/ime/framework/airmessage/IAirMessageUIService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

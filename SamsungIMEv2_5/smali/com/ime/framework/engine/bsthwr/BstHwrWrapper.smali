.class public Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;
.super Lcom/ime/framework/engine/AbstractInputEngine;
.source "BstHwrWrapper.java"


# instance fields
.field mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/engine/AbstractInputEngine;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    return-void
.end method


# virtual methods
.method public init()I
    .locals 7

    const/4 v6, 0x0

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "BstHwr Wrapper.init()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->LoadJNILibrary()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    sput v6, Lcom/ime/framework/engine/bsthwr/HWManager;->NOTIFICATION_HEIGHT:I

    :goto_0
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    sget v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    const-string v2, "zh_CN"

    invoke-static {v2}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwCheckEngineWithDb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ERROR_DB:I

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mHwManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwLoadDB(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I

    move-result v1

    sget v3, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    if-eq v1, v3, :cond_2

    sget-boolean v3, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hwLoadDB error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v6

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/ime/framework/engine/bsthwr/HWManager;->NOTIFICATION_HEIGHT:I

    goto :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

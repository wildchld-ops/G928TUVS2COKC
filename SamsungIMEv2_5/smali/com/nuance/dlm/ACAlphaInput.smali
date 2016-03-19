.class public Lcom/nuance/dlm/ACAlphaInput;
.super Ljava/lang/Object;
.source "ACAlphaInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/dlm/ACAlphaInput$InputHandler;
    }
.end annotation


# static fields
.field private static final SEND_EVENTS:I = 0x1

.field private static final SEND_EVENTS_INTERVAL:I = 0x2710


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

.field private connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

.field private handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-direct {v1, p0}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;-><init>(Lcom/nuance/dlm/ACAlphaInput;)V

    iput-object v1, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    iput-object p1, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    iget-object v1, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaRegisterEventHandlerCallback()I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acAlphaDeleteCategory(I)I
.end method

.method private final native acAlphaDeleteCategoryLanguage(II)I
.end method

.method private final native acAlphaExportAsEvent(ZI)I
.end method

.method private final native acAlphaGetCachedEvents()[B
.end method

.method private final native acAlphaProcessEvent([B)I
.end method

.method private final native acAlphaRegisterEventHandlerCallback()I
.end method

.method private final native acAlphaScanBuffer([CIIIIIZZ)I
.end method

.method private final native acAlphaScanSessionBegin([B[B[BII)I
.end method

.method private final native acAlphaScanSessionEnd()I
.end method

.method static synthetic access$000(Lcom/nuance/dlm/ACAlphaInput;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    return-void
.end method

.method private onEventCacheFull()V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    return-void
.end method

.method private onEventCallback([BZ)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    return-void
.end method

.method private onFirstCachedEvent()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendEvents()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaGetCachedEvents()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategory(I)I

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategoryLanguage(II)I

    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaExportAsEvent(ZI)I

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    return-void
.end method

.method public onYield()V
    .locals 0

    return-void
.end method

.method public processEvent([B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaProcessEvent([B)I

    move-result v0

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseAlphaDlm()V

    return-void
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    :cond_0
    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionBegin([B[B[BII)I

    return-void

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method

.method public scanBuffer([CIIIIIZZ)Z
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanBuffer([CIIIIIZZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanEnd()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionEnd()I

    return-void
.end method

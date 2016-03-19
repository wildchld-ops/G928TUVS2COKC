.class public Lcom/nuance/dlm/ACKoreanInput;
.super Ljava/lang/Object;
.source "ACKoreanInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

.field private connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/ACKoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanRegisterEventHandlerCallback()I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acKoreanDeleteCategory(I)I
.end method

.method private final native acKoreanDeleteCategoryLanguage(II)I
.end method

.method private final native acKoreanExportAsEvent(ZI)I
.end method

.method private final native acKoreanProcessEvent([B)I
.end method

.method private final native acKoreanRegisterEventHandlerCallback()I
.end method

.method private final native acKoreanScanBuffer([CIIIIZZ)I
.end method

.method private onEventCallback([BZ)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->onKoreanDlmEvent([BZ)V

    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanDeleteCategory(I)I

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanDeleteCategoryLanguage(II)I

    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanExportAsEvent(ZI)I

    return-void
.end method

.method public processEvent([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanProcessEvent([B)I

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseKoreanDlm()V

    return-void
.end method

.method public scanBuffer([CIIZZ)Z
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanScanBuffer([CIIIIZZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.class Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;
.super Landroid/os/Handler;
.source "AbstractCandidateExpandLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandGridViewHandler"
.end annotation


# static fields
.field private static final MAX_PAGE_CAND_SIZE:I = 0x14

.field private static final MAX_PAGE_CAND_SIZE_FIRST_PHONE:I = 0x24

.field private static final MSG_DELAY_PREPARE_CANDIDATES:I = 0x0

.field private static final PREPARE_CANDIDATES_1ST_DELAYED:I = 0x190

.field private static final PREPARE_CANDIDATES_DELAYED:I = 0x64


# instance fields
.field private mDisplayedCount:I

.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private startPrepareCandidatesTimer(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x14

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;I)I

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    const/4 v2, 0x1

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCHNCandidates(IIZ)I
    invoke-static {v0, v1, v3, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;IIZ)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->startPrepareCandidatesTimer(I)V

    :cond_0
    return-void
.end method

.method public prepareCandidates(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->stopPrepareCandidatesTimer()V

    iput p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    const/16 v0, 0x24

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;I)I

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    const/4 v2, 0x0

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCHNCandidates(IIZ)I
    invoke-static {v1, p1, v0, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;IIZ)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->mDisplayedCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v1, 0x190

    invoke-direct {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->startPrepareCandidatesTimer(I)V

    :cond_0
    return-void
.end method

.method public stopPrepareCandidatesTimer()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.class Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;
.super Ljava/lang/Object;
.source "DecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/DecHandwriting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "hwEngineCandInfo"
.end annotation


# instance fields
.field public CandidateResult:[C

.field public PrevWordBuff:[C

.field final synthetic this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;


# direct methods
.method public constructor <init>(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)V
    .locals 3

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ime/framework/dbmanager/DbFileInfo;->getInstance()Lcom/ime/framework/dbmanager/DbFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/DbFileInfo;->IsHwrLightVer()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_CHAR:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    # setter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    invoke-static {p1, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$002(Lcom/ime/framework/engine/bsthwr/DecHandwriting;Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;)Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$100(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "---1---recgType-= eRecogType.RECOG_CHAR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    invoke-static {p1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$000(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    move-result-object v1

    sget-object v2, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_TEXT:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    if-ne v1, v2, :cond_1

    const/16 v0, 0x2db

    :goto_1
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    const/4 v1, 0x5

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    return-void

    :cond_0
    sget-object v1, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_TEXT:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    # setter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    invoke-static {p1, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$002(Lcom/ime/framework/engine/bsthwr/DecHandwriting;Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;)Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$100(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "---1---recgType-= eRecogType.RECOG_TEXT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0xfb

    goto :goto_1
.end method


# virtual methods
.method public getCandResult()[C
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

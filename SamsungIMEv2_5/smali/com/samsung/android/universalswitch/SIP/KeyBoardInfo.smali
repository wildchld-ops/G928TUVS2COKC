.class public Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
.super Ljava/lang/Object;
.source "KeyBoardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;,
        Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mCVSuggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateViewDisplayedCount:I

.field private mCandidateViewHeight:I

.field private mCurrentKeyBoardHeight:I

.field private mCurrentKeyBoardWidth:I

.field private mDefaultKeyBoardHeight:I

.field private mDefaultKeyBoardWidth:I

.field private mEmoticonRowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonViewHeight:I

.field private mEmoticonViewWidth:I

.field private mIsCandiateViewExpanded:Z

.field private mIsEmoticonOn:Z

.field private mIsPredictionOn:Z

.field private mPopUpWindowDismiss:Z

.field private mPopUpWindowX:I

.field private mPopWindowShown:Z

.field private mPopupWindowY:I

.field private mRowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mkeysList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonRowList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mkeysList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mRowList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCVSuggestionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCVExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsCandiateViewExpanded:Z

    return v0
.end method

.method public getCVSuggestionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCVSuggestionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCandidateViewDisplayedCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCandidateViewDisplayedCount:I

    return v0
.end method

.method public getCandidateViewHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCandidateViewHeight:I

    return v0
.end method

.method public getCurrentKeyBoardHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCurrentKeyBoardHeight:I

    return v0
.end method

.method public getCurrentKeyBoardWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCurrentKeyBoardWidth:I

    return v0
.end method

.method public getDeafultKeyBoardHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mDefaultKeyBoardHeight:I

    return v0
.end method

.method public getDeafultKeyBoardWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mDefaultKeyBoardWidth:I

    return v0
.end method

.method public getEmoticonLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonViewHeight:I

    return v0
.end method

.method public getEmoticonLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonViewWidth:I

    return v0
.end method

.method public getEmoticonRowList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonRowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsEmoticonMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsEmoticonOn:Z

    return v0
.end method

.method public getKeyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mkeysList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPopUpDismissState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopUpWindowDismiss:Z

    return v0
.end method

.method public getPopWindowX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopUpWindowX:I

    return v0
.end method

.method public getPopupWindowY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopupWindowY:I

    return v0
.end method

.method public getPrediction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsPredictionOn:Z

    return v0
.end method

.method public getRowList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mRowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isPopWindowShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopWindowShown:Z

    return v0
.end method

.method public setCVExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsCandiateViewExpanded:Z

    return-void
.end method

.method public setCVSuggestionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCVSuggestionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCandidateViewDisplayedCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCandidateViewDisplayedCount:I

    return-void
.end method

.method public setCandidateViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCandidateViewHeight:I

    return-void
.end method

.method public setCurrentKeyBoardHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCurrentKeyBoardHeight:I

    return-void
.end method

.method public setCurrentKeyBoardWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mCurrentKeyBoardWidth:I

    return-void
.end method

.method public setDefaultKeyBoardHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mDefaultKeyBoardHeight:I

    return-void
.end method

.method public setDefaultKeyBoardWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mDefaultKeyBoardWidth:I

    return-void
.end method

.method public setEmoticonLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonViewHeight:I

    return-void
.end method

.method public setEmoticonLayoutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonViewWidth:I

    return-void
.end method

.method public setEmoticonRowList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mEmoticonRowList:Ljava/util/ArrayList;

    return-void
.end method

.method public setIsEmoticonMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsEmoticonOn:Z

    return-void
.end method

.method public setKeyList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mkeysList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPopUpDismissState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopUpWindowDismiss:Z

    return-void
.end method

.method public setPopWindowShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopWindowShown:Z

    return-void
.end method

.method public setPopWindowX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopUpWindowX:I

    return-void
.end method

.method public setPopupWindowY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mPopupWindowY:I

    return-void
.end method

.method public setPrediction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mIsPredictionOn:Z

    return-void
.end method

.method public setRowList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->mRowList:Ljava/util/ArrayList;

    return-void
.end method

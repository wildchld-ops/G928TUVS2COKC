.class public Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
.super Ljava/lang/Object;
.source "HotWordPhraseInfo.java"


# instance fields
.field private mPhrase:Ljava/lang/String;

.field private mSpell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->mPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->mSpell:Ljava/lang/String;

    return-object v0
.end method

.method public setPhrase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->mPhrase:Ljava/lang/String;

    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->mSpell:Ljava/lang/String;

    return-void
.end method

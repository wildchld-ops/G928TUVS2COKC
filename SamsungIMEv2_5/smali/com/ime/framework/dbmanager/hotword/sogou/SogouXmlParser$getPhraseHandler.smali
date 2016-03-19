.class Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SogouXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getPhraseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$300(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "word"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->setPhrase(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$300(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # setter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$102(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "word"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/implement/setting/Constants;->isSensitiveWords(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    const-string v1, ""

    # setter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$102(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "word"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    invoke-direct {v1}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;-><init>()V

    # setter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$202(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v0

    const-string v1, "pinyin"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->setSpell(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    # setter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->access$302(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

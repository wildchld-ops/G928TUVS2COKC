.class Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CategoryDBParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getPhraseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBKey(Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ELEMENT_DB:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDbList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$000(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDbList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$000(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ELEMENT_DB:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_ID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_LANG_ID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PATH:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    new-instance v10, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v10, v11, v12, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;-><init>(IILjava/lang/String;)V

    # setter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9, v10}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$102(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_VERSION:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_NAME:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_STATUS:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PRELOAD:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBVersion(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBCategory(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBName(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBEnable(Z)V

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;->this$0:Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    invoke-static {v9}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setPreload(Z)V

    :cond_0
    return-void
.end method

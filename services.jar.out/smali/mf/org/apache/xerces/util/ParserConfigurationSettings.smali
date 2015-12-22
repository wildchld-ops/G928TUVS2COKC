.class public Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.super Ljava/lang/Object;
.source "ParserConfigurationSettings.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"


# instance fields
.field protected fFeatures:Ljava/util/HashMap;

.field protected fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field protected fProperties:Ljava/util/HashMap;

.field protected fRecognizedFeatures:Ljava/util/ArrayList;

.field protected fRecognizedProperties:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    iput-object p1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    return-void
.end method


# virtual methods
.method public addRecognizedFeatures([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v1, p1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    aget-object v0, p1, v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public addRecognizedProperties([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v2, p1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    aget-object v1, p1, v0

    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

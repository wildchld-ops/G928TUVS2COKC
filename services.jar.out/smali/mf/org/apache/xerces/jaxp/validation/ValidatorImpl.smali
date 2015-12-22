.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;
.super Lmf/javax/xml/validation/Validator;
.source "ValidatorImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# static fields
.field private static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final JAXP_SOURCE_RESULT_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

.field private fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lmf/javax/xml/validation/Validator;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v3, "http://javax.xml.transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "feature-not-recognized"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "feature-not-supported"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "ProperyNameNull"

    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string/jumbo v3, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "http://javax.xml.transform"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "feature-read-only"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v5, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-read-only"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v5, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lmf/javax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lmf/javax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-nez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmf/javax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    if-nez v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lmf/javax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    if-nez v0, :cond_6

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "SourceParameterNull"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "SourceNotAccepted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

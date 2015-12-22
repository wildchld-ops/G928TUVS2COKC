.class public final Lmf/org/apache/xerces/xpointer/XPointerHandler;
.super Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.source "XPointerHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;,
        Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    }
.end annotation


# instance fields
.field private final ELEMENT_SCHEME_NAME:Ljava/lang/String;

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object p3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/XPTR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public getPointerParts()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getXPointerPart()Lmf/org/apache/xerces/xpointer/XPointerPart;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/XPTR"

    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v1}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v1}, Lmf/org/apache/xerces/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXPointerResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->init()V

    new-instance v3, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V

    new-instance v1, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v5, 0x0

    move-object/from16 v4, p1

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v2, "InvalidXPointerExpression"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    const-string v2, "InvalidXPointerExpression"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    const-string v2, "InvalidXPointerExpression"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v17, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-interface/range {v17 .. v18}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v14

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x0

    const/4 v8, 0x0

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "XPTRTOKEN_OPEN_PAREN"

    if-eq v12, v2, :cond_3

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    const-string v2, "MultipleShortHandPointers"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    :goto_2
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_4
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v15

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "XPTRTOKEN_CLOSE_PAREN"

    if-eq v7, v2, :cond_5

    const-string v2, "SchemeDataNotFollowedByCloseParenthesis"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    :goto_3
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    if-eq v13, v8, :cond_7

    const-string v2, "UnbalancedParenthesisInXPointerExpression"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v4, v5

    const/4 v5, 0x2

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const-string v2, "element"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v10, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v10, v2, v4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    invoke-interface {v10, v15}, Lmf/org/apache/xerces/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v10, v15}, Lmf/org/apache/xerces/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v9}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_8
    const-string v2, "InvalidXPointerExpression"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    move/from16 v0, v20

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "XPTRTOKEN_OPEN_PAREN"

    if-ne v15, v2, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_a
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->peekToken()I
    invoke-static {v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v3, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "XPTRTOKEN_OPEN_PAREN"

    if-ne v2, v4, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    const-string v2, "SchemeUnsupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerPart;

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lmf/org/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_5

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    :goto_0
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-handler"

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_6

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    :goto_1
    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-language"

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    :cond_2
    :goto_2
    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    :cond_3
    :goto_3
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne p1, v0, :cond_4

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_4
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    :cond_6
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
